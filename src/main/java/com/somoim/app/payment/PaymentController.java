package com.somoim.app.payment;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/pay/*")
public class PaymentController {

	@Autowired
	private PaymentService paymentService;

	@GetMapping("paypopup")
	public String setPaymentType(PaymentTypeDTO pTypeDTO, Model model)throws Exception {
		PaymentTypeDTO paymentTypeDTO = paymentService.getPaymentType(pTypeDTO);
		
		model.addAttribute("type",paymentTypeDTO);
		return "./payment/paymentpopup";
	}
	
	@PostMapping("payment")
	@ResponseBody
	public Map<String, Object> payment(ClientDTO clientDTO, HttpSession session)throws Exception {
		MemberDTO mDto = (MemberDTO)session.getAttribute("member");
		mDto = paymentService.getCustomerKey(mDto);
		String customerKey = mDto.getCustomerKey();
		clientDTO.setKeyName("toss");
		clientDTO = paymentService.getClientKey(clientDTO);
		String clientKey = clientDTO.getKeyID();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("clientKey", clientKey);
		map.put("customerKey", customerKey);
		return map;
	}

	@GetMapping("success")
	public String paySuccess() throws Exception {
		return "./payment/success";
	}
	
	@PostMapping("confirm")
	public String payConfirm()throws Exception{
		
		return "";
	}
}
