package com.somoim.app.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDAO;
import com.somoim.app.member.MemberDTO;

@Service
public class PaymentService {

	@Autowired
	private PaymentDAO paymentDAO;
	
	@Autowired
	private MemberDAO memberDAO;

	public List<PaymentTypeDTO> getPaymentTypeList() throws Exception{
		return paymentDAO.getPaymentTypeList();
	}

	public PaymentTypeDTO getPaymentType(PaymentTypeDTO pTypeDTO)throws Exception{
		return paymentDAO.getPaymentType(pTypeDTO);
	}
	
	public MemberDTO getCustomerKey(MemberDTO memberDTO)throws Exception {
		return paymentDAO.getCustomerKey(memberDTO); 
	}
	
	public ClientDTO getClientKey(ClientDTO clientDTO)throws Exception{
		return paymentDAO.getClientKey(clientDTO);
	}
}
