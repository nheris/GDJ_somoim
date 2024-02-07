package com.somoim.app.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	public List<PaymentTypeDTO> getPaymentType() throws Exception{
		return paymentDAO.getPaymentType();
	}
}
