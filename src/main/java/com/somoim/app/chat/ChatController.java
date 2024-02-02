package com.somoim.app.chat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
	
	@GetMapping("/chat/chating")
	public void chat(Model model) {
		model.addAttribute("userid","user01");
	}
}
