package com.somoim.app.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;

@Service
public class ChatMessageService {
	
	@Autowired
	private ChatMessageDAO chatMessageDAO;
	
	public int addChat(ChatMessageDTO chatMessageDTO) {
		List<Long> roomList = chatMessageDAO.chatRoomCh();
		
		// 방이 없다면 (방번호로 찾기)
		if(!roomList.contains(chatMessageDTO.getChatRoomNum())){
			// 방 생성
			chatMessageDAO.addChatRoom();			
		}
		
		// 채팅
		return chatMessageDAO.addChat(chatMessageDTO);
	}
	
	// 특정방의 이전 채팅 기록
	public List<ChatMessageDTO> chatHistory(ChatMessageDTO chatMessageDTO){
		return chatMessageDAO.chatHistory(chatMessageDTO);
	}
	
	public List<Long> chatRoomList(MemberDTO memberDTO){
		return chatMessageDAO.chatRoomList(memberDTO);
	}
	
	public List<MemberDTO> roomUserList(ChatMessageDTO chatMessageDTO){
		return chatMessageDAO.roomUserList(chatMessageDTO);
	}
	
	public MoimDTO moimChat(){
		return chatMessageDAO.moimChat();
	}
}
