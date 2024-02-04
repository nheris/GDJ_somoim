package com.somoim.app.moim;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;

@Controller
@RequestMapping("/moim/*")
public class MoimController {
	@Autowired
	private MoimService moimService;
	
	//모임 리스트
	@GetMapping("list")
	public void getList(Model model) throws Exception{
		//리로드로
		//MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		//임시---------
		MemberDTO memberDTO= new MemberDTO();
		memberDTO.setUserName("user1");
		//-------------
		List<MoimDTO> ar = moimService.getList(memberDTO);
		model.addAttribute("list", ar);
	}
	
	//모임 개설
	@GetMapping("add")
	public void add() throws Exception{
		
	}
	@PostMapping("add")public void add(MoimDTO moimDTO) throws Exception{
		
	}
	
	@GetMapping("test")
	public void test() throws Exception{
		
	}
}
