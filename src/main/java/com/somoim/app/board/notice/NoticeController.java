package com.somoim.app.board.notice;

import java.io.Console;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.board.BoardDTO;
import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.Pager;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "공지게시판";
	}
		
	@ModelAttribute("boardKind")
	public Integer getKind() {
		return 0;
	}
	@ModelAttribute("active")
	public String active() {
		return "";
	}
	
	
	// 등록
	@GetMapping("add")
	public String setAdd()throws Exception{
		return "board/add";
	}
	
	// 등록
	@PostMapping("add")
	public String setAdd(BoardDTO boardDTO, MultipartFile [] attachs, HttpSession session)throws Exception{
		// write 작성 안하고 session에서 받아오게 설정
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		boardDTO.setBoardWriter(memberDTO.getUserName());
		System.out.println(boardDTO.getBoardWriter());
		int reulst = noticeService.setAdd(boardDTO, attachs);
		System.out.println("Result of setAdd: " + reulst);
		return "redirect:./list";
	}
	
	//리스트
	@GetMapping("list")
	public String getList() throws Exception {
	    return "board/list";
	}
	

//	@GetMapping("noticeList")
//	@ResponseBody
//	public List<BoardDTO> getListJson(Pager pager) throws Exception {
//	    List<BoardDTO> ar = noticeService.getList(pager);   
//	    return ar; // JSON 데이터를 반환
//	}
	@GetMapping("noticeList")

	public String getListJson(Pager pager, BoardDTO boardDTO, Model model) throws Exception {
	    List<BoardDTO> ar = noticeService.getListJson(pager, boardDTO);   
	    model.addAttribute("data", ar);
	    model.addAttribute("pager", pager);
	    //return map; // JSON 데이터를 반환
	    
	    return "board/noticeList";
	}

	
	
	//디테일
	@GetMapping("detail")
	public String getDetail(BoardDTO boardDTO, Model model)throws Exception{
	boardDTO = noticeService.getDetail(boardDTO);
	model.addAttribute("detail", boardDTO);
	return "board/detail";
	
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
