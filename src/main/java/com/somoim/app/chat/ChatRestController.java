package com.somoim.app.chat;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/chat/*")
public class ChatRestController {

	@GetMapping("room")
	public Map<String, Object> getHistory(@PathVariable Long chatRoomNum){
		
		Map<String, Object> map = new HashMap<>();
		System.out.println("rest controller");
		System.out.println(chatRoomNum);
		return map;
	}
}
