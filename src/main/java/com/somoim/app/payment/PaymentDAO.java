package com.somoim.app.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAO {

	@Autowired
	private SqlSession sqlSession;
	final String NAMESPACE = "com.somoim.app.payment.PaymentDAO.";
	
	public List<PaymentTypeDTO> getPaymentTypeList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPaymentTypeList");
	}
	
	public PaymentTypeDTO getPaymentType(PaymentTypeDTO pTypeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPaymentType", pTypeDTO);
	}
}
