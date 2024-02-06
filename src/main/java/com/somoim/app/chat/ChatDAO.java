package com.somoim.app.chat;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.somoim.app.chat.ChatDAO.";
	
	public int addChatRoom() {
		return sqlSession.insert(NAMESPACE+"addChatRoom");
	}
	
	public int addChat() {
		return sqlSession.insert(NAMESPACE+"addChat");
	}
}
