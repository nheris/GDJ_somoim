package com.somoim.app.moim.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.input.MessageDigestCalculatingInputStream.MessageDigestMaintainingObserver;
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
@RequestMapping("/moim/main/board/*")
public class MoimBoardController {
	@Autowired
	private MoimBoardService moimBoardService;
	
	//list
	@GetMapping("list")
	public void list(MoimDTO moimDTO, Pager pager ,Model model) throws Exception {
		List<Object> ar = moimBoardService.list(pager, moimDTO);
		
		model.addAttribute("moimDTO", moimDTO);
		model.addAttribute("list", ar);
	}
	
	//add
	@GetMapping("add")
	public void add(MoimDTO moimDTO, Model model) throws Exception {
		model.addAttribute("dto",moimDTO);
	}
	@PostMapping("add")
	public String add(MoimBoardDTO boardDTO, HttpSession session, MultipartFile[] file) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		boardDTO.setBoardWriter(memberDTO.getNickName());
		//boardDTO.setBoardWriter(memberDTO.getUserName());
		boardDTO.setUserName(memberDTO.getUserName());
		
		int result = moimBoardService.add(boardDTO, file);
		
		String path = "redirect:./list?moimNum="+boardDTO.getMoimNum();
		return path;
		
		
	}
	
	//detail
	
	//

}
