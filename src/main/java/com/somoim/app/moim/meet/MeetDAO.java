package com.somoim.app.moim.meet;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MeetDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.somoim.app.moim.meet.MeetDAO.";
	
	
	//add
		//정모 개설
	public int add(MeetDTO meetDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"add", meetDTO);
	}
		//정모이미지 저장
	public int fileAdd(MeetFileDTO meetFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"fileAdd", meetFileDTO);
	}
	
	
}
