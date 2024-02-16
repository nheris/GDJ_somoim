package com.somoim.app.board.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.somoim.app.board.BoardDTO;
import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.Pager;




@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	
	@PostMapping("delete")
	@ResponseBody
	public Map<String, Object> setDelete(Pager pager, ReplyDTO replyDTO)throws Exception{
		replyService.setDelete(replyDTO);
	 	List<ReplyDTO> ar = replyService.getList(pager, replyDTO);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("datas", ar);
		map.put("pager", pager);
		
		return map;
	}
	
	@PostMapping("add")
	@ResponseBody
	public Map<String, Object> setReply(Pager pager,ReplyDTO replyDTO, HttpSession session, Model model)throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		replyDTO.setUserName(memberDTO.getUserName());
		QnaDTO qnaDTO = (QnaDTO)session.getAttribute("board");
		replyDTO.setBoardNum(qnaDTO.getBoardNum());
		System.out.println(replyDTO.getBoardNum());
		int result = replyService.setReply(replyDTO);
		
		List<ReplyDTO> ar = replyService.getList(pager, replyDTO);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("datas", ar);
		map.put("pager", pager);
		
		
		return map;
		
	}
	
	@GetMapping("list")
	public String getList(Pager pager, ReplyDTO replyDTO, Model model)throws Exception {
		List<ReplyDTO> ar = replyService.getList(pager, replyDTO);
		model.addAttribute("data", ar);
		model.addAttribute("pager", pager);
		return "board/replyListResult";
	}
	
	
}
