package com.somoim.app.mypage;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import com.somoim.app.payment.PaymentService;
import com.somoim.app.payment.PaymentTypeDTO;

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
	
	@PostMapping("update")
	public String setUpdate(MultipartFile attachs,HttpSession session,MemberDTO memberDTO)throws Exception{
		
		
		MemberDTO m = (MemberDTO)session.getAttribute("member");
		memberDTO.setUserName(m.getUserName());	
		
		int result = memberService.setUpdate(memberDTO,attachs);
		

		return "redirect:./main";
		
	}
	@PostMapping("password")
	public String setPasswordUpdate(HttpSession session,MemberDTO memberDTO)throws Exception{
		
		MemberDTO m = (MemberDTO)session.getAttribute("member");
		memberDTO.setUserName(m.getUserName());
		
		memberService.setPasswordUpdate(memberDTO);
		
		return "redirect:./main";
	}
}
