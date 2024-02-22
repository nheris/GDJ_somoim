package com.somoim.app.chat;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.somoim.app.member.MemberDTO;

public class ChatHandler extends TextWebSocketHandler{

	@Autowired
	private ChatMessageService chatMessageService;
	
	private MemberDTO memberDTO;
	
	private static HashMap<String, Object> sessions = new HashMap<>();	
	
	 // group( 정모, 모임, 1:1 )에 따른 Map 나누기 
	private static List<WebSocketSession> sessionList = new ArrayList<>(); 

	public ChatHandler() {
		sessionList = new ArrayList<WebSocketSession>();
		sessions = new HashMap<>();
	}
	
	// 연결후에 실행되는 메서드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 세션 아이디를 키로 사용, session을 값으로
		System.out.println("연결");
		sessionList.add(session);
		System.out.println("connect : "+session.getAttributes().get("roomNum"));
	}

	//메세지를 다루는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		ChatMessageDTO chatMessageDTO = objectMapper.readValue(message.getPayload(), ChatMessageDTO.class);
		System.out.println(chatMessageDTO.getChatText() +" : "+ chatMessageDTO.getUserName()+" : "+chatMessageDTO.getChatRoomNum());
		List<MemberDTO> list = chatMessageService.roomUserList(chatMessageDTO);
		Long chat = chatMessageService.chatHistory(chatMessageDTO).get(0).getChatRoomNum();
		
		int result = chatMessageService.addChat(chatMessageDTO);
		
		
		//전송된 메시지를 List의 모든 세션에 전송
		for (WebSocketSession s : sessionList) {
			
			try {
				if(chat == chatMessageDTO.getChatRoomNum()) {
					System.out.println("------------------------");
					System.out.println(message.getPayload());
					sessions.put(chatMessageDTO.getUserName(), chatMessageDTO);
					WebSocketSession socket = (WebSocketSession)sessions.get(chatMessageDTO.getUserName());
					
					s.sendMessage(message);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}

	}

	// 연결종료후 실행될 메서드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		System.out.println("연결해제");
	}

	
	
}
