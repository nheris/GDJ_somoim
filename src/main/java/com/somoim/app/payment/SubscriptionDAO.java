package com.somoim.app.payment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubscriptionDAO {

	
	@Autowired
	private SqlSession sqlSession;
	final String NAMESPACE = "com.somoim.app.payment.SubscriptionDAO.";
	
	public int setSubscription (PaymentDTO paymentDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setSubscription",paymentDTO);
	}
}
