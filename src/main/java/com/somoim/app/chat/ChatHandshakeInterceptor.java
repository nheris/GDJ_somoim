package com.somoim.app.chat;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Bean;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

public class ChatHandshakeInterceptor implements HandshakeInterceptor{

    @Override
    public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler, Map<String, Object> attributes) throws Exception {
        if (request instanceof ServletServerHttpRequest) {
            ServletServerHttpRequest req = (ServletServerHttpRequest) request;
            HttpSession session = req.getServletRequest().getSession();
            attributes.put("session", session);
        }
        return true;
    }

    @Override
    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler, Exception exception) {
    	
    }
    
	@Bean
    private ChatHandshakeInterceptor chatHandshakeInterceptor() {
		// TODO Auto-generated method stub
		return new ChatHandshakeInterceptor();
	}
}
