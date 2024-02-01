package com.somoim.app.moim;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/moim/*")
public class MoimController {
	@Autowired
	private MoimService moimService;
	
	@GetMapping("list")
	public void getList(Model model) {
		//MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		//임시---------
		MemberDTO memberDTO= new MemberDTO();
		memberDTO.setUserName("user1");
		//-------------
		List<MoimDTO> ar = moimService.getList(memberDTO);
		model.addAttribute("list", ar);
	}
	
	
}
