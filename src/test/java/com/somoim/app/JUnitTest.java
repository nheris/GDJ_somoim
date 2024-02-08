package com.somoim.app;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.somoim.app.member.MemberDAO;
import com.somoim.app.member.MemberDTO;


public class JUnitTest extends MyTest {
	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void join_test() throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUserName("qjatj");
		memberDTO.setPassword("1234a");
		memberDTO.setNickName("a");
		memberDTO.setName("a");
		memberDTO.setResidentNum("1234a");
		memberDTO.setAddress("asdf");
		memberDTO.setPhone("1234a");
		memberDTO.setEmail("set");
		int result = memberDAO.setJoin(memberDTO);
		
		assertNotEquals(0, result);
	}

}
