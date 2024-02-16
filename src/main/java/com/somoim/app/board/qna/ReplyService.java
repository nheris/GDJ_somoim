package com.somoim.app.board.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.somoim.app.util.Pager;




@Service
public class ReplyService {

	@Autowired
	private ReplyDAO replyDAO;
	
	
	public int setDelete(ReplyDTO replyDTO)throws Exception{
		return replyDAO.setDelete(replyDTO);
	}
	
	
	public int setReply(ReplyDTO replyDTO)throws Exception{
		return replyDAO.setReply(replyDTO);
	}
	
	public List<ReplyDTO> getList(Pager pager,ReplyDTO replyDTO)throws Exception{
		pager.makeRow();
		System.out.println(replyDTO.getBoardNum());
		pager.makeNum(replyDAO.getTotalCount(replyDTO));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pager", pager);
		map.put("replyDTO", replyDTO);
			
		
		return replyDAO.getList(map);
	}

		
	
	
	
	
	
	
	
	
	
	
	
}
