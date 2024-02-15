package com.somoim.app.category;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.moim.MoimDTO;

@Repository
public class categoryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace="com.somoim.app.category.categoryDAO.";
	

	//list
		public List<categoryDTO> list(MemberDTO memberDTO) throws Exception {
			return sqlSession.selectList(namespace+"list", memberDTO);
		}

	
	
}
