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
		}			
		memberDTO=(MemberDTO)session.getAttribute("appmember");
		
		dto = memberService.getMypage(memberDTO);
		model.addAttribute("member",dto);
		System.out.println("앱");
		return "mypage/main";	
		
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
		m=(MemberDTO)session.getAttribute("appmember");
		memberDTO.setUserName(m.getUserName());
				

		int result = memberService.setUpdate(memberDTO,attachs);


		return "redirect:./main";

	}

	@GetMapping("pay")
	public String getPaymentTypeList(PaymentTypeDTO pTypeDTO, Model model) throws Exception{
		List<PaymentTypeDTO> ar = paymentService.getPaymentTypeList();
		model.addAttribute("paymentType",ar);
		return "mypage/pay";
	}
}
