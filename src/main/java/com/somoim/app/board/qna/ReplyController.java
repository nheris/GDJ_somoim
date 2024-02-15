package com.somoim.app.board.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.somoim.app.util.Pager;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	
	//add
	
	
	//list
	@GetMapping("list")
	@ResponseBody
	public Map<String, Object> getList(ReplyDTO replyDTO, Pager pager, Model model)throws Exception{
		List<ReplyDTO> ar = replyService.getList(pager, replyDTO);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("datas", ar);
		map.put("pager", pager);
		return map;
	}
	
	
	//delete
	
	
	//update
	
}
