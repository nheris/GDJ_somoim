package com.somoim.app.payment;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.DrbgParameters;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.interfaces.PBEKey;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.expr.Instanceof;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/pay/*")
public class PaymentController {
	

	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private SecretKey secretKey;
	
	@PostMapping("webhook")
	@ResponseBody
	public boolean webHook(@RequestBody Map<String, Object> map, PaymentDTO paymentDTO, OrdersDTO order)throws Exception {
		order.setOrderId((String)map.get("orderId"));
		paymentDTO.setOrderId((String)map.get("orderId"));
		paymentDTO = paymentService.getPayment(paymentDTO);
		String secret = (String)map.get("secret");
		String depositKey = paymentDTO.getDepositKey(); 
		if(!secret.equals(depositKey)) {
			System.out.println("false");
			return false;
		}else {
			if(map.get("status").equals("CANCELED")) {
				order.setOrderStatus(2);
				paymentService.upOrders(order);
				return true;
			}
			
			System.out.println(map);
			
			order.setOrderStatus(1);
			paymentService.upOrders(order);
			
			System.out.println(paymentDTO);
			String dateString = (String)map.get("createdAt");
			paymentDTO = paymentService.setPaymentDate(paymentDTO, dateString);
			paymentService.upPayment(paymentDTO);
			return true;
		}	
	}
	
	@GetMapping("paypopup")
	public String setPaymentType(PaymentTypeDTO pTypeDTO, Model model)throws Exception {
		PaymentTypeDTO paymentTypeDTO = paymentService.getPaymentType(pTypeDTO);
		model.addAttribute("type",paymentTypeDTO);
		return "./payment/paymentpopup";
	}
	
	@PostMapping("payment")
	@ResponseBody
	public Map<String, Object> payment(@RequestBody Map<String, Object> reqMap, OrdersDTO ordersDTO, ClientDTO clientDTO, HttpSession session)throws Exception {
		ObjectMapper om = new ObjectMapper();
		ordersDTO = om.convertValue(reqMap.get("ordersDTO"),OrdersDTO.class);
		clientDTO = om.convertValue(reqMap.get("clientDTO"), ClientDTO.class);
		
		MemberDTO mDto = (MemberDTO)session.getAttribute("member");
		mDto = paymentService.getCustomerKey(mDto);
		ordersDTO.setCustomerKey(mDto.getCustomerKey());
		OrdersDTO newOrder = paymentService.getOrders(ordersDTO);
		
		if(newOrder!=null) {
			ordersDTO = newOrder;
		}else {
			ordersDTO.creatOderId();			
			paymentService.setOrders(ordersDTO);
		}

		clientDTO = paymentService.getClientKey(clientDTO);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orders", ordersDTO);
		map.put("client", clientDTO);
		
		return map;		
	}

	@GetMapping("success")
	public String paySuccess() throws Exception {
		return "./payment/success";
	}
	
	@GetMapping("fail")
	public String payFail()throws Exception{
		return "./payment/fail";
	}
	
	@PostMapping("confirm")
	@ResponseBody
	public Map<String, Object> payConfirm(@RequestBody PaymentDTO paymentDTO)throws Exception{
		//토스 결제 시크릿키 로드 후 Basic 형식으로 변환
			String secret = secretKey.getSecretKey();
			Base64.Encoder encoder = Base64.getEncoder();
			byte[] encBytes = encoder.encode((secret+":").getBytes("UTF-8"));
			String encSecret = "Basic "+new String(encBytes, 0, encBytes.length);
		//토스 결제승인 API 호출
			URL address = new URL("https://api.tosspayments.com/v1/payments/confirm");
			HttpURLConnection connection = (HttpURLConnection)address.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", encSecret);
			connection.setRequestProperty("Content-type", "application/json");
			connection.setDoOutput(true);
		//파라미터값 JSON으로 작성해서 리퀘스트
			ObjectMapper objm = new ObjectMapper();
			String json=objm.writeValueAsString(paymentDTO);
			connection.getOutputStream().write(json.toString().getBytes("UTF-8"));
		//리스폰스 수신해서 리스폰스 수신값 및 호출결과 확인
			int code = connection.getResponseCode();
			boolean check = code == 200?true : false;
			
		//리스폰스가 true면 인풋스트림 false면 에러스트림 작성
			InputStream responseStream = check?connection.getInputStream():connection.getErrorStream();
			
			
		//리스폰스 결과 JSON으로 작성 후 HashMap으로 저장	
			Reader reader = new InputStreamReader(responseStream, StandardCharsets.UTF_8);
			Object obj = objm.readValue(reader, Object.class);
			String response = objm.writeValueAsString(obj);
			Map<String, Object> responseMap = objm.readValue(response, new TypeReference<HashMap<String, Object>>(){});
			Map<String, Object> resultMap = new HashMap<String, Object>();
		//결제 결과 저장할 ordersDTO DB에서 꺼내옴
			OrdersDTO ordersDTO = new OrdersDTO();
			ordersDTO.setOrderId(paymentDTO.getOrderId());
			ordersDTO = paymentService.searchOrder(ordersDTO);
			responseStream.close();
		//리스폰스 결과 체크하여 클라이언트에 리스폰스할 Map 작성
			if(check) {
				String dateString = (String)responseMap.get("approvedAt");
				System.out.println(responseMap);
				paymentDTO = paymentService.setPaymentDate(paymentDTO, dateString);				
				Integer amount = (Integer)responseMap.get("totalAmount");
				paymentDTO.setAmount(amount.longValue());
				paymentDTO.setCustomerKey(ordersDTO.getCustomerKey());
				paymentDTO.setpTypeNum(ordersDTO.getpTypeNum());
				paymentDTO.setDepositKey((String)responseMap.get("secret"));
				System.out.println(paymentDTO);
				//주문정보 결제완료로 수정
				ordersDTO.setOrderStatus(1);
				resultMap.put("mesaage","결제 승인");
				resultMap.put("orderName",responseMap.get("orderName"));
				resultMap.put("amount",paymentDTO.getAmount());
				resultMap.put("paymentDay", dateString);
				resultMap.put("result",true);
			//결과를 DB에 저장함
				paymentService.upOrders(ordersDTO);
				paymentService.setPayment(paymentDTO);
				return resultMap;
			}else {
				resultMap.put("message", responseMap.get("message"));
				resultMap.put("amount",paymentDTO.getAmount());
				resultMap.put("result",false);
			//이미 처리된 결제인지 결제 자체가 안된 것이지 판단하여 주문정보 수정
				if(responseMap.get("message").equals("이미 처리된 결제 입니다.")) {
					ordersDTO.setOrderStatus(1);
				}else {
					ordersDTO.setOrderStatus(2);
				}
				paymentService.upOrders(ordersDTO);
				return resultMap;
			}
	}
}

