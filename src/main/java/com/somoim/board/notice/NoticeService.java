package com.somoim.board.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.util.Pager;
import com.somoim.board.BoardDTO;
import com.somoim.board.BoardService;


@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	
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
		return noticeDAO.setAdd(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile[] attachs) throws Exception {
		
		return noticeDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.setDelete(boardDTO);
	}

}
