package com.somoim.app.chat;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.somoim.app.chat.ChatMessageDAO.";
	
	// room
	// chating 치기전 방 생성 
	public int addChatRoom() {
		return sqlSession.insert(NAMESPACE+"addChatRoom");
	}
	
	// chatMessage 테이블의 방번호와 chatRoom 테이블의 번호를 비교하기위해
	public List<Long> chatRoomCh() {
		return sqlSession.selectList(NAMESPACE+"chatRoomCh");
	}
	
	// chat
	// chating 칠때 마다 insert
	public int addChat(ChatMessageDTO chatMessageDTO) {
		return sqlSession.insert(NAMESPACE+"addChat",chatMessageDTO);
	}
	
	public List<ChatMessageDTO> chatHistory(ChatMessageDTO chatMessageDTO){
		return sqlSession.selectList(NAMESPACE+"chatHistory", chatMessageDTO);
	}
	
	
}
