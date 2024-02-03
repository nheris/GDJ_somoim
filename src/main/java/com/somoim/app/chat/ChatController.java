package com.somoim.app.chat;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/chat/*")
public class ChatController {
	
	@GetMapping("chating")
	public ModelAndView chat(HttpSession session, MemberDTO memberDTO, ModelAndView mv) {
		System.out.println("session : "+session.getAttribute("member"));
		if(session.getAttribute("member") == null) {
			mv.setViewName("/member/login");
			return mv;
		}
		
		mv.setViewName("/chat/chating");
		return mv;
	}
}
