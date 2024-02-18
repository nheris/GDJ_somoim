package com.somoim.app.payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDAO;
import com.somoim.app.member.MemberDTO;

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
	
	public MemberDTO getCustomerKey(MemberDTO memberDTO)throws Exception {
		return paymentDAO.getCustomerKey(memberDTO); 
	}
	
	public ClientDTO getClientKey(ClientDTO clientDTO)throws Exception{
		return paymentDAO.getClientKey(clientDTO);
	}
	
	public int setOrders(OrdersDTO ordersDTO)throws Exception{
		ordersDTO.setOrderStatus(0);
		int result = paymentDAO.setOrders(ordersDTO);
		return result;
	}
	
	public OrdersDTO getOrders(OrdersDTO ordersDTO)throws Exception {
		return paymentDAO.getOrders(ordersDTO);
	}
}
