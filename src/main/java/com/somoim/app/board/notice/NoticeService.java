package com.somoim.app.board.notice;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.board.BoardDAO;
import com.somoim.app.board.BoardDTO;
import com.somoim.app.board.BoardFileDTO;
import com.somoim.app.board.BoardService;
import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.FileManager;
import com.somoim.app.util.Pager;


@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private ServletContext servletContext;
	
	// List
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		pager.makeRow();
		Long totalcount = noticeDAO.getTotalCount(pager);
		pager.makeNum(totalcount);
		List<BoardDTO>ar = this.noticeDAO.getList(pager);
		return ar;
	}


	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {		
		return noticeDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO, MultipartFile [] attachs) throws Exception {
		//1. 글을 등록 - 글번호를 알아오기 위해서
		int result = noticeDAO.setAdd(boardDTO);	
		
		//2. 파일을 HDD에 저장
		//2-1 저장할 폴더의 실제 경로 구하기
		String path = servletContext.getRealPath("/resources/upload/notice");
		System.out.println(path);
		//2-2 HDD에 저장하고 파일명 받아오기
		
		
		System.out.println("attachs size: " + attachs.length);
		for(MultipartFile f: attachs) {
			System.out.println(f);
			if(f.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.fileSave(path, f);
		//2-3 DB에 파일 정보 저장하기
			BoardFileDTO boardFileDTO = new BoardFileDTO();
			boardFileDTO.setUserName(boardDTO.getUserName());
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOriName(f.getOriginalFilename());
			boardFileDTO.setBoardNum(boardDTO.getBoardNum());
			result = noticeDAO.setFileAdd(boardFileDTO);
		}
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile[] attachs) throws Exception {
		
		return noticeDAO.setUpdate(boardDTO); 
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		
		List<BoardFileDTO> ar = noticeDAO.getFileList(boardDTO);
		String path = servletContext.getRealPath("/resources/upload/notice");
		for(BoardFileDTO b : ar) {
			fileManager.fileDelete(path, b.getFileName());
		}
		int result = noticeDAO.setDelete(boardDTO);
		return result; 
	}


	public List<BoardDTO> getListJson(Pager pager, BoardDTO boardDTO) throws Exception{
		pager.makeRow();
		pager.makeNum(noticeDAO.getTotalCount(pager));
		System.out.println(pager.getSearch());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pager", pager);
		map.put("BoardDTO", boardDTO);
		return noticeDAO.getListJson(map);
	}

}
