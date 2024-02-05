package com.somoim.app.chat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatHandler extends TextWebSocketHandler{

	private static HashMap<String, WebSocketSession> sessions = new HashMap<>();	
	
	private List<WebSocketSession> sessionList = new ArrayList<>();
	
	// 연결후에 실행되는 메서드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 세션 아이디를 키로 사용, session을 값으로
//		sessionList.add(session);
		sessions.put(session.getId(), session);
//		System.out.println(session.getId()+"연결");
//		System.out.println(sessions.get(session.getId()));
//		for(WebSocketSession s : sessionList) {
//			System.out.println(s.getId());
//		}
	}

	//메세지를 다루는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String msg = message.getPayload();
		System.out.println("msg.Payload() : "+msg);
		
	// 전송된 메시지를 List의 모든 세션에 전송
		for (WebSocketSession s : sessions.values()) {
			session.sendMessage(message);
			System.out.println("text : "+s.getPrincipal().getName());
		}
	}

	// 연결종료후 실행될 메서드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessions.remove(session.getId());
		System.out.println("연결해제");
	}

	
	
}
