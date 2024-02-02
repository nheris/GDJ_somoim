package com.somoim.app.subscription;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/pay/*")
public class SubscriptionController {

	private SubscriptionDAO subscriptionDAO;
	
	@GetMapping("page")
	public String setPayment()throws Exception {
		return "mypage/pay";
	}
}
