package com.somoim.app.payment;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public int upOrders(OrdersDTO ordersDTO)throws Exception{
		return paymentDAO.upOrders(ordersDTO);
	}
	
	public OrdersDTO searchOrder(OrdersDTO ordersDTO)throws Exception{
		return paymentDAO.searchOrder(ordersDTO);
	}
	
	public int setPayment(PaymentDTO paymentDTO)throws Exception{
		return paymentDAO.setPayment(paymentDTO);
	}
	
	public PaymentDTO getPayment(PaymentDTO paymentDTO)throws Exception{
		return paymentDAO.getPayment(paymentDTO);
	}
	
	public PaymentDTO setPaymentDate(PaymentDTO paymentDTO, String dateString)throws Exception{
		if(dateString==null) {
			return paymentDTO;
		}
		System.out.println(dateString);
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX");
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS");
		java.sql.Date sqlDate;
		if(dateString.contains(".")) {
			Date date = format2.parse(dateString);
			sqlDate = new java.sql.Date(date.getTime());
		}else {
			Date date = format1.parse(dateString);
			sqlDate = new java.sql.Date(date.getTime());
		}
		paymentDTO.setPaymentDay(sqlDate);	
		return paymentDTO;
	}
	
	public int upPayment(PaymentDTO paymentDTO)throws Exception{
		return paymentDAO.upPayment(paymentDTO);
	}
}
