package com.somoim.app.chat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDTO;

@Service
public class ChatMessageService {
	
	@Autowired
	private ChatMessageDAO chatMessageDAO;
	
	public void addChat(Long chatRoomNum, MemberDTO memberDTO) {
		Map<String, Object> map = new HashMap<>();
		
		List<Long> roomList = chatMessageDAO.chatRoomCh();
		
		// 방이 없다면 (방번호로 찾기)
		if(!roomList.contains(chatRoomNum)){
			// 방 생성
			chatMessageDAO.addChatRoom();			
		}
		
		// 채팅
		map.put("roomNum", chatRoomNum);
		map.put("member", memberDTO);
		chatMessageDAO.addChat(map);
		
	}
}
