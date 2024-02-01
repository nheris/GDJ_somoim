package com.somoim.app.moim;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDTO;

@Service
public class MoimService {
	@Autowired
	private MoimDAO moimDAO;
	
	public List<MoimDTO> getList(MemberDTO memberDTO) {
		return moimDAO.getList(memberDTO);
	}
	
	
}
