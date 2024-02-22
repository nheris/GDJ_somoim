package com.somoim.app.category;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;

@Service
public class categoryService {

	
@Autowired
private categoryDAO categoryDAO;


//list
public List<categoryDTO> list(MemberDTO memberDTO) throws Exception {
	return categoryDAO.list(memberDTO);
	
}



}
