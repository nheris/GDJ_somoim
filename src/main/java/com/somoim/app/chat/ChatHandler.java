package com.somoim.app.chat;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatHandler extends TextWebSocketHandler{

	private static List<WebSocketSession> list = new ArrayList<WebSocketSession>();	
	
	// 연결후에 실행되는 메서드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		list.add(session);
		System.out.println("연결");
	}

	//메세지를 다루는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	// 전송된 메시지를 List의 모든 세션에 전송
	String msg = message.getPayload();
	for (WebSocketSession s : list) {
		s.sendMessage(new TextMessage(session.getAcceptedProtocol()+":"+msg));
		}
	}

	// 연결종료후 실행될 메서드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("연결헤제");
//		sessionList.remove(session);
	}

	
	
}
