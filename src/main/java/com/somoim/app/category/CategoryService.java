package com.somoim.app.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.somoim.app.files.FileDTO;
import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;
import com.somoim.app.moim.MoimFileDTO;
import com.somoim.app.util.FileManager;
import com.somoim.app.util.Pager;

@Service
public class CategoryService {

	
@Autowired
private CategoryDAO categoryDAO;

@Autowired
private FileManager fileManager;
@Autowired
private ServletContext servletContext;

//list
public List<CategoryDTO> list(MemberDTO memberDTO) throws Exception {
	return categoryDAO.list(memberDTO);
	
}

public List<CategoryDTO> getListCategory(Pager pager, CategoryDTO categoryDTO)throws Exception{
	System.out.println(servletContext.getRealPath("/resources/upload/moim"));
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("pager", pager);
	map.put("CategoryDTO", categoryDTO);
	pager.makeRow();
	pager.makeNum(categoryDAO.getTotalCount(map));
	pager.setPerPage(5L);
	System.out.println(categoryDTO.getMoimCategory());
	return categoryDAO.getListCategory(map);
}



}
