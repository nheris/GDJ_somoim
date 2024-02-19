package com.somoim.app.moim.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.Pager;

@RequestMapping("/moim/main/reply/*")
public class ReplyController {
	@Autowired
	private ReplyService replyService;
	
	
	
	//add
	@PostMapping("add")
	public String add(Pager pager, ReplyDTO replyDTO, HttpSession session, Model model) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		replyDTO.setUserName(memberDTO.getUserName());
		replyDTO.setReplyWriter(memberDTO.getNickName());
		int result = replyService.add(replyDTO);
		
		//조회
		model.addAttribute(memberDTO);
		
		return "replyListResult";
	}
	
	//list
	@GetMapping("list")
	public String getList(ReplyDTO replyDTO, Model model, Pager pager) throws Exception{
		List<ReplyDTO> ar = replyService.getList(replyDTO, pager);
		
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "/moim/main/board/replyListResult";
	}
}
