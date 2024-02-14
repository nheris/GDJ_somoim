package com.somoim.app.moim.meet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.moim.MoimDTO;

@Controller
@RequestMapping("/moim/main/*")
public class MeetController {
	
	@Autowired
	private MeetService meetService;
	
	//정모 list
	@GetMapping("together")
	public void together(MoimDTO moimDTO, Model model) throws Exception {
		model.addAttribute("list", moimDTO);
	}
	
	//add
	@GetMapping("add")
	public void mainAdd(MoimDTO moimDTO, Model model) throws Exception {
		model.addAttribute("dto",moimDTO);
	}
	@PostMapping("add")
	public int mainAdd(MeetDTO meetDTO, MultipartFile file) throws Exception {
//		System.out.println(meetDTO);
//		System.out.println(file);
//		return 0;
		int result = meetService.add(meetDTO, file);
		
		return result;
		//return "redirect:./together";
		
	}
}
