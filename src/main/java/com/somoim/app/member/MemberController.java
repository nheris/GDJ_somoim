package com.somoim.app.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")

public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("joinApp")
	public void setJoinApp(ModelAndView mv)throws Exception{		
	}
	
	@PostMapping("joinApp")
	public String setJoinApp(MemberDTO memberDTO,MultipartFile attachs,Model model)throws Exception{
		int result = memberService.setjoin(memberDTO, attachs);
		String msg = "가입불가";
		String path = "./joinApp";
		
		if(result>0) {
			msg = "가입성공";
			path = "../";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("path", path);
		
		return "member/result";
	}
	
	@PostMapping("submitApp")
	@ResponseBody
	public String submitJoinApp(MemberDTO memberDTO,HttpSession session)throws Exception{
		System.out.println("Received userName: " + memberDTO.getUserName());
        System.out.println("Received email: " + memberDTO.getEmail());
		
        session.setAttribute("exmember",memberDTO);        
        return "success";
//        memberDTO = memberService.submitJoinApp(memberDTO);
//				if(memberDTO != null) {
//					session.getAttribute("member");
//					System.out.println("널이아닌값");
//					return "goHome";
//				}else {
//		;}
	}
	
	@GetMapping("idCheck")
	public String getIdCheck(MemberDTO memberDTO,Model model)throws Exception{
		int result = 0;		
		
		memberDTO = memberService.getMypage(memberDTO);
		if(memberDTO == null) {
			result = 1;
		}
		
		model.addAttribute("result",result);
		
		return "member/idCheck";
		
	}
	
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
			path = "../";
		}
		
		model.addAttribute("msg", msg);
		System.out.println("path");
		model.addAttribute("path", path);
		
		return "member/result";
	}
	@GetMapping("login")
	public void getLogin(MemberDTO memberDTO)throws Exception{
		
	}
	
	@PostMapping("login")
	public String getLogin(MemberDTO memberDTO,HttpSession session,Model model)throws Exception{
		memberDTO= memberService.getLogin(memberDTO);
		String msg = "아이디 또는 비밀번호 확인";
		String path = "/member/login";
		if(memberDTO==null) {
			model.addAttribute("msg", msg);
			model.addAttribute("path", path);
			return "member/result"; 
		}		
		session.setAttribute("member", memberDTO);
		return "redirect:../";
	}
	@GetMapping("logout")
	public String getLogout(HttpSession session)throws Exception{
		session.setAttribute("member",null);
		return "redirect:../";
	}

}	
