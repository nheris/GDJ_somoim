package com.somoim.app.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String setPaymentType(PaymentTypeDTO pTypeDTO, Model model)throws Exception {
		PaymentTypeDTO paymentTypeDTO = paymentService.getPaymentType(pTypeDTO);
		model.addAttribute("type",paymentTypeDTO);
		return "./payment/paymentpopup";
	}
}
