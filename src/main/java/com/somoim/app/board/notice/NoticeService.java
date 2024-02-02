package com.somoim.app.board.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.board.BoardDAO;
import com.somoim.app.board.BoardDTO;
import com.somoim.app.board.BoardFileDTO;
import com.somoim.app.board.BoardService;
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
	public int setAdd(BoardDTO boardDTO, MultipartFile[] attchs) throws Exception {
		//  글등록 (글번호 조회용)
		int result = noticeDAO.setAdd(boardDTO);
		
		// 파일저장
		String path = servletContext.getRealPath("/resources/upload/notice");
		
		//HDD 저장 파일명 받기
		for(MultipartFile file: attchs) {
			if(file.isEmpty()) {
				continue;
			}
		
		String fileName = fileManager.fileSave(path, file);
	
		// db저장
		BoardFileDTO boardFileDTO = new BoardFileDTO();
		boardFileDTO.setFileName(fileName);
		boardFileDTO.setOriName(file.getOriginalFilename());
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

}
