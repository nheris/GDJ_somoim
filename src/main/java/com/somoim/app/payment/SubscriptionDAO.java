package com.somoim.app.payment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubscriptionDAO {

	
	@Autowired
	private SqlSession sqlSession;
	final String NAMESPACE = "com.somoim.app.payment.SubscriptionDAO.";
	
	public int setSubs (PaymentDTO paymentDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setSubs",paymentDTO);
	}
	
	public SubsDTO getSubs(PaymentDTO paymentDTO)throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSubs",paymentDTO);
	}
	
	public int upDonedate(SubsDTO subsDTO)throws Exception {
		return sqlSession.update(NAMESPACE+"upDonedate",subsDTO);
	}
}
