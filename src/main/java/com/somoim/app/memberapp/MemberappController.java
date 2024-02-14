package com.somoim.app.memberapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.member.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberappController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("joinapp")
	public void setAppJoin(MemberDTO memberDTO)throws Exception{
		
	}
}
