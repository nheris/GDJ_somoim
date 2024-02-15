package com.somoim.app.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.somoim.app.member.MemberDTO;

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
	
	public MemberDTO getCustomerKey(MemberDTO memberDTO)throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCustomerKey", memberDTO);
	}
	
	public ClientDTO getClientKey(ClientDTO clientDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getClientKey",clientDTO);
	}
}
