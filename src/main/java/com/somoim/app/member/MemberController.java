package com.somoim.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("join")
	public void setJoin(MemberDTO memberDTO)throws Exception{
		
	}
	
	@PostMapping("join")
	public String setJoin(MemberDTO memberDTO,MultipartFile attachs,Model model)throws Exception{
		int result = memberService.setjoin(memberDTO, attachs);
		
		String msg = "가입 실패";
		String path = "./join";
		
		if(result>0) {
			msg = "가입 성공";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("pass", path);
		
		return "member/result";
	}
}	
