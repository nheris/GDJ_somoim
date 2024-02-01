package com.somoim.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.util.Pager;
import com.somoim.board.BoardDTO;
import com.somoim.board.MemberDTO;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
	}
		
	
	// 등록
	@GetMapping("add")
	public String setAdd()throws Exception{
		return "board/add";
	}
	
	// 등록
	@PostMapping("add")
	public String setAdd(BoardDTO boardDTO, MultipartFile [] attachs, HttpSession session)throws Exception{
		/// 로그인했을때 세션에서 작성자 받아오기
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		boardDTO.setBoardWriter(memberDTO.getUserName());
		
		int reulst = noticeService.setAdd(boardDTO, attachs);
		return "redirect:./list";
	}
	
	//리스트
	@GetMapping("list")
	public String getList(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar = noticeService.getList(pager);
		model.addAttribute("list", ar);	
		return "board/list";
	}

	//디테일
	@GetMapping("detail")
	public String getDetail(BoardDTO boardDTO, Model model)throws Exception{
	boardDTO = noticeService.getDetail(boardDTO);
	model.addAttribute("detail", boardDTO);
	return "board/detial";
	
	}
	
	//업데이트
	@PostMapping("update")
	public String setUpdate(BoardDTO boardDTO , MultipartFile [] attachs)throws Exception{
	int result = noticeService.setUpdate(boardDTO, attachs);
	return "redirect:./list";
	}
	
	
	//업데이트
	@GetMapping("update")
	public String setUpdate(BoardDTO boardDTO , Model model)throws Exception{
	boardDTO = noticeService.getDetail(boardDTO);
	model.addAttribute("DTO", boardDTO);
	return "board/update";
		
	}
	
	@PostMapping("delete")
	public String setDelete(BoardDTO boardDTO)throws Exception{
		int result = noticeService.setDelete(boardDTO);
		return "redirect:./list";
	}
	
	
	
}
