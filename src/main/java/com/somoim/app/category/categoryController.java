package com.somoim.app.category;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;

@Controller
@RequestMapping("/category/*")
public class categoryController {

	@Autowired
	private categoryService categoryService;
	
	@GetMapping("main")
	public void getList() throws Exception {
	
	//return "category/main";	
	}
	
	
	@GetMapping("list")
	public void list (HttpSession session, Model model) throws Exception{
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		List<categoryDTO> ar = categoryService.list(memberDTO);
		model.addAttribute("list", ar);
	}
	
}
