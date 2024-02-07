package com.somoim.app.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	public List<PaymentTypeDTO> getPaymentTypeList() throws Exception{
		return paymentDAO.getPaymentTypeList();
	}
	
	public PaymentTypeDTO getPaymentType(PaymentTypeDTO pTypeDTO)throws Exception{
		return paymentDAO.getPaymentType(pTypeDTO);
	}
}
