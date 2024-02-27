package com.somoim.app.adminPage;

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
	
	@GetMapping("add")
	public String add ()throws Exception{
		return "admin/add";
	}
	
	@PostMapping("add")
	public String add (AdminPageDTO adminPageDTO, HttpSession session)throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		adminPageDTO.setUserName(memberDTO.getUserName());
		int result = adminPageService.add(adminPageDTO);
		return "/adm";
	}
	
	@GetMapping("placeList")
	public String placeList(AdminPageDTO adminPageDTO, Model model)throws Exception{
		List<AdminPageDTO> ar = adminPageService.placeList(adminPageDTO);
		model.addAttribute("admin",ar);
		
		return "admin/placeList";
	}
	
	
	
	
}
