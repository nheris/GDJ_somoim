package com.somoim.app.moim;

import java.lang.ProcessBuilder.Redirect;
import java.lang.reflect.Member;
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

@Controller
@RequestMapping("/moim/*")
public class MoimController {
	@Autowired
	private MoimService moimService;
	
	//모임 리스트
	@GetMapping("list")
	public void getList(HttpSession session, Model model) throws Exception{
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");

		List<MoimDTO> ar = moimService.getList(memberDTO);
		model.addAttribute("list", ar);
	}
	
	//모임 개설
	@GetMapping("add")
	public void add()  {
		
	}
	@PostMapping("add")
	public String add(MoimDTO moimDTO, MultipartFile file, HttpSession session) throws Exception{
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		moimDTO.setMoimHead(memberDTO.getUserName());
		
		
		moimService.add(moimDTO, file);
		
		return "redirect:./list";
		
	}
	
	//delete
	@PostMapping("delete")
	public String delete(MoimDTO moimDTO, HttpSession session, Model model) throws Exception {

		int result = moimService.delete(moimDTO);
		
		//다시 조회
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");

		List<MoimDTO> ar = moimService.getList(memberDTO);
		model.addAttribute("list", ar);
		
		return "moim/ajaxList";
		
	}
	
	//update 모임수정
	@GetMapping("update")
	public void update(MoimDTO moimDTO, Model model) throws Exception {
		moimDTO = moimService.update(moimDTO);
		model.addAttribute("dto", moimDTO);
	}
	@PostMapping("update")
	public String update(MoimDTO moimDTO, MultipartFile file) throws Exception {
		int result = moimService.updatePost(moimDTO, file);
		
		return "redirect:./list";
	}
	
	
	//-----------------------------------------------MAIN-------------------------------------------------------
	
	
	//home
	@GetMapping("main/home")
	public void detail(MoimDTO moimDTO, Model model) throws Exception {
		moimDTO = moimService.getInfo(moimDTO);
		model.addAttribute("dto", moimDTO);
		
	}
	
	//together 정모
	//정모 리스트
	@GetMapping("main/together")
	public void together(MoimDTO moimDTO, Model model) throws Exception {
		model.addAttribute("dto", moimDTO);
	}
	//정모 만들기
	@GetMapping("main/add")
	public void mainAdd(MoimDTO moimDTO, Model model) throws Exception {
		
	}
	@PostMapping("main/add")
	public void mainAdd(MoimDTO moimDTO) throws Exception {
		
	}
	
	
	//board 게시판
	@GetMapping("main/board")
	public void board() throws Exception {
		
	}
	@GetMapping("main/writing")
	public void mainWrite() throws Exception {
		
	}
	@PostMapping("main/writing")
	public void mainWrite(HttpSession session, MoimBoardDTO moimBoardDTO) throws Exception {
		
	}


	
}
