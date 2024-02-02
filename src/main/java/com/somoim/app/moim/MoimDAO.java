package com.somoim.app.moim;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.somoim.app.member.MemberDTO;

@Repository
public class MoimDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.somoim.app.moim.MoimDAO.";
	
	public List<MoimDTO> getList(MemberDTO memberDTO) {
		return sqlSession.selectList(NAMESPACE+"getList", memberDTO);
	}
}
