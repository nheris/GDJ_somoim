package com.somoim.app.chat;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.somoim.app.member.MemberDTO;

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
	
	// 특정 user의 참여중인 채팅방
	public List<Long> chatRoomList(MemberDTO memberDTO){
		return sqlSession.selectList(NAMESPACE+"chatRoomList", memberDTO);
	}
	
	public List<MemberDTO> roomUserList(ChatMessageDTO chatMessageDTO){
		return sqlSession.selectList(NAMESPACE+"roomUserList", chatMessageDTO);
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
