package com.somoim.app.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/pay/*")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@GetMapping("paypopup")
	public String setPaymentType()throws Exception {
		
		return "./payment/paymentpopup";
	}
}
