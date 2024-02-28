package com.somoim.app.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.member.MemberService;
import com.somoim.app.payment.PaymentService;
import com.somoim.app.payment.PaymentTypeDTO;


@Controller
@RequestMapping("/mypage/*")
public class MypageController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private PaymentService paymentService;

	@GetMapping("main")
	public String getMypage(HttpSession session,Model model)throws Exception{
		MemberDTO dto = new MemberDTO();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		if(memberDTO != null && memberDTO.getLoginNum() != null) {
			dto = memberService.getMypage(memberDTO);
			model.addAttribute("member", dto);
			System.out.println(dto.getAddress());
			return "mypage/main";			
		}else {
		session.setAttribute("member",null);
		memberDTO=null;
		memberDTO=(MemberDTO)session.getAttribute("appmember");
		System.out.println("앱로그인");
		dto = memberService.getMypage(memberDTO);
		model.addAttribute("appmember",dto);
		return "mypage/main";
		}
	}
	
	@PostMapping("password")
	public String setPasswordUpdate(HttpSession session,MemberDTO memberDTO)throws Exception{
		
		MemberDTO m = (MemberDTO)session.getAttribute("member");
		memberDTO.setUserName(m.getUserName());
		memberDTO.setEmail(m.getEmail());
		
		
		memberService.setPasswordUpdate(memberDTO);
		
		return "redirect:./main";
		
	}

	@PostMapping("update")
	public String setUpdate(MultipartFile attachs,HttpSession session,MemberDTO memberDTO)throws Exception{
				
		MemberDTO m = (MemberDTO)session.getAttribute("member");
		
		if(m == null) {
			session.setAttribute("member", null);
			System.out.println("나오며ㅛㄴ안돼");			
			m=(MemberDTO)session.getAttribute("appmember");
			memberDTO.setUserName(m.getUserName());
			int result = memberService.setUpdate(memberDTO,attachs);
			
			return "redirect:./main";
			

		}else {
			
			memberDTO.setUserName(m.getUserName());
			int result = memberService.setUpdate(memberDTO,attachs);

		return "redirect:./main";
		}
	}
	
	//앱 회원탈퇴
	@PostMapping("appDel")
	public String appDel(MemberDTO memberDTO,HttpSession session)throws Exception{
		MemberDTO dto = (MemberDTO)session.getAttribute("appmember");
		memberDTO.setUserName(dto.getUserName());
		memberDTO.setPassword(dto.getPassword());
		
		int result = memberService.accountDel(memberDTO);
		session.setAttribute("appmember",null);
		return "redirect:../";
	}
	
	//회원탈퇴
	@GetMapping("accountDel")
	public void accountDel()throws Exception{
		
	}
	@PostMapping("accountDel")
	public String accountDel(MemberDTO memberDTO,HttpSession session)throws Exception{
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		System.out.println(dto.getUserName());
		memberDTO.setUserName(dto.getUserName());
		memberDTO.setPassword(dto.getPassword());
		System.out.println(memberDTO.getPassword()+"pwd");
		
		int result = memberService.accountDel(memberDTO);
		session.setAttribute("member", null);		
		
		return "../";
	}

	@GetMapping("pay")
	public String getPaymentTypeList(PaymentTypeDTO pTypeDTO, Model model) throws Exception{
		List<PaymentTypeDTO> ar = paymentService.getPaymentTypeList();
		model.addAttribute("paymentType",ar);
		return "mypage/pay";
	}
	
	@GetMapping("paymentList")
	public ModelAndView paymentList(HttpSession session, ModelAndView mv)throws Exception {
		
		mv.setViewName("mypage/paymentList");
		return mv;
	}
}
