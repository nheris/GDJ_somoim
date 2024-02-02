package com.somoim.app.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.member.MemberService;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("main")
	public String getMypage(HttpSession session,Model model)throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO = memberService.getMypage(memberDTO);
		
		model.addAttribute("member", memberDTO);
		
		return "mypage/main";
	}
}
