package com.somoim.app.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubscriptionService {

	@Autowired
	private SubscriptionDAO subscriptionDAO;
	
}
