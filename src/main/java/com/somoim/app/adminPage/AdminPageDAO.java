package com.somoim.app.adminPage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.Pager;


@Repository
public class AdminPageDAO {

	
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace="com.somoim.app.adminPage.AdminPageDAO.";
	

	public List<MemberDTO> list(Pager pager) throws Exception{
		return sqlSession.selectList(namespace+"list", pager);
	}
	
	public Long getTotalCount (Pager pager)throws Exception{
		return sqlSession.selectOne(namespace+"getTotalCount", pager);
	}
	
}
