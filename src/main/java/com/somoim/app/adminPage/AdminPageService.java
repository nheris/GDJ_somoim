package com.somoim.app.adminPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.board.BoardDTO;
import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;
import com.somoim.app.util.Pager;

@Service
public class AdminPageService {

	@Autowired
	private AdminPageDAO adminPageDAO;
	
	public List<MemberDTO> list(Pager pager)throws Exception{
		pager.makeRow();
		Long totalCount = adminPageDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		List<MemberDTO> ar = adminPageDAO.list(pager);
		return ar;
	} 
	
}
