package com.somoim.app.chat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatHandler extends TextWebSocketHandler{

	private static HashMap<String, WebSocketSession> sessions = new HashMap<>(2);	
	
	 // group( 정모, 모임, 1:1 )에 따른 Map 나누기 
	private static List<HashMap<String,WebSocketSession>> list = new ArrayList<>(); 
	
	// 연결후에 실행되는 메서드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 세션 아이디를 키로 사용, session을 값으로
		sessions.put(session.getId(), session);
		System.out.println(sessions.size());
		System.out.println("cookie : "+session.getHandshakeHeaders().COOKIE);
	}

	//메세지를 다루는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handler Session id : "+session.getId());
		//전송된 메시지를 List의 모든 세션에 전송
		for (WebSocketSession s : sessions.values()) {
			s.sendMessage(message);
		}
	}

	// 연결종료후 실행될 메서드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessions.remove(session.getId());
		System.out.println("연결해제");
	}

	
	
}
