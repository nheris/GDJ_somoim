package com.somoim.app.moim.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.util.Pager;

@Service
public class ReplyService {
	@Autowired
	private ReplyDAO replyDAO;
	
	//add
	public int add(ReplyDTO replyDTO) throws Exception {
		return replyDAO.add(replyDTO);
	}
	
	//list
	public List<ReplyDTO> getList(ReplyDTO replyDTO, Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(replyDAO.getTotalCount(replyDTO));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pager", pager);
		map.put("replyDTO", replyDTO);
		
		return replyDAO.getList(map);
	}
	
	//delete
	public int delete(ReplyDTO replyDTO) throws Exception{
		return replyDAO.delete(replyDTO);
	}
	
	//update
	public int update(ReplyDTO replyDTO) throws Exception{
		return replyDAO.update(replyDTO);
	}
}
