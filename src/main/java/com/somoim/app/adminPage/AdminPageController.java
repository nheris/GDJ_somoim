package com.somoim.app.adminPage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;
import com.somoim.app.util.Pager;

@Controller
@RequestMapping("/admin/*")
public class AdminPageController {

	@Autowired
	private AdminPageService adminPageService;
	
	
	@GetMapping("list")
	public void list (MemberDTO memberDTO, Model model, Pager pager) throws Exception{
		List<MemberDTO> ar = adminPageService.list(pager);
		model.addAttribute("list",ar);
		model.addAttribute("pager",pager);
	}
	
	

	
}
