package com.somoim.app.subscription;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import oracle.jdbc.proxy.annotation.Post;

@Controller("/pay/*")
public class SubscriptionController {

	private SubscriptionDAO subscriptionDAO;
	
	@PostMapping("")
	public void setPayment()throws Exception {
		
	}
}
