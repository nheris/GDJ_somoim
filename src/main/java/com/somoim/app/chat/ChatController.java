package com.somoim.app.chat;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.member.MemberService;

@Controller
//@RequestMapping("/chat/*")
public class ChatController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ChatMessageService chatMessageService;
	
	@GetMapping("/chat")
	public ModelAndView chat(HttpSession session, MemberDTO memberDTO, ChatMessageDTO chatMessageDTO, ModelAndView mv) throws Exception{
		if(session.getAttribute("member") == null) {
			mv.setViewName("/member/login");
			return mv;
		}
		
		
		memberDTO = (MemberDTO)session.getAttribute("member");
		MemberDTO dto = memberService.getLogin(memberDTO);

		List<Long> chatRoomList = chatMessageService.chatRoomList(dto);
		List<ChatMessageDTO> chatHistory = chatMessageService.chatHistory(chatMessageDTO);
		mv.addObject("chatRoomList", chatRoomList);
		mv.addObject("chatHistory", chatHistory);
		
		mv.addObject("user",dto);
		mv.setViewName("/chat/chating");
		return mv;
	}
	
	
}
