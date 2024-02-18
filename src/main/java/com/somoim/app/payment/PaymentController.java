package com.somoim.app.payment;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/pay/*")
public class PaymentController {
	

	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private SecretKey secretKey;

	@GetMapping("paypopup")
	public String setPaymentType(PaymentTypeDTO pTypeDTO, Model model)throws Exception {
		PaymentTypeDTO paymentTypeDTO = paymentService.getPaymentType(pTypeDTO);
		model.addAttribute("type",paymentTypeDTO);
		return "./payment/paymentpopup";
	}
	
	@PostMapping("payment")
	@ResponseBody
	public Map<String, Object> payment(@RequestBody OrdersDTO ordersDTO, @RequestBody String keyName, HttpSession session)throws Exception {
		System.out.println(ordersDTO);
		System.out.println(keyName);
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

//		clientDTO = paymentService.getClientKey(clientDTO);
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("orders", ordersDTO);
//		map.put("client", clientDTO);
		
		return null;		
	}

	@GetMapping("success")
	public String paySuccess() throws Exception {
		return "./payment/success";
	}
	
	@PostMapping("confirm")
	@ResponseBody
	public String payConfirm(@RequestBody PaymentDTO paymentDTO, ClientDTO clientDTO, OrdersDTO ordersDTO)throws Exception{
			String secret = secretKey.getSecretKey();
			Base64.Encoder encoder = Base64.getEncoder();
			byte[] encBytes = encoder.encode((secret+":").getBytes("UTF-8"));
			String encSecret = "Basic "+new String(encBytes, 0, encBytes.length);
		
			URL address = new URL("https://api.tosspayments.com/v1/payments/confirm");
			HttpURLConnection connection = (HttpURLConnection)address.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", encSecret);
			connection.setRequestProperty("Content-type", "application/json");
			connection.setDoOutput(true);
			
			ObjectMapper objm = new ObjectMapper();
			String json=objm.writeValueAsString(paymentDTO);
			connection.getOutputStream().write(json.toString().getBytes("UTF-8"));
			
			int code = connection.getResponseCode();
			boolean check = code == 200?true : false;
			
			InputStream responseStream = check?connection.getInputStream():connection.getErrorStream();
			
			Reader reader = new InputStreamReader(responseStream, StandardCharsets.UTF_8);
			Object obj = objm.readValue(reader, Object.class);
			
			String response = objm.writeValueAsString(obj);
			System.out.println(response);
			
		
		return "";
	}
}
