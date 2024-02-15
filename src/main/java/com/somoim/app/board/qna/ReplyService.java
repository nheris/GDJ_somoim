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
	
	
	public List<ReplyDTO> getList(Pager pager, ReplyDTO replyDTO)throws Exception{
		pager.makeRow();
		pager.makeNum(replyDAO.getTotalCount(replyDTO));
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pager", pager);
		map.put("ReplyDTO", replyDTO);
		
		return replyDAO.getList(map);
	}

	public int setUpdate (ReplyDTO replyDTO)throws Exception{
		return 0;
	}
	
	public int setReply (ReplyDTO replyDTO)throws Exception{
		return 0;	
	}
	
	public int setDelete(ReplyDTO replyDTO)throws Exception{
		return 0;
	}


		
	
	
	
	
	
	
	
	
	
	
	
}
