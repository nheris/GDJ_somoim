package com.somoim.app.moim.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.somoim.app.moim.MoimDTO;
import com.somoim.app.util.Pager;

@Repository
public class MoimBoardDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.somoim.app.moim.board.BoardDAO.";
	
	//list
	public Long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCount", pager);
	}
	public List<Object> list(Map<String, Object> map) throws Exception{
		return sqlSession.selectList(NAMESPACE+"list", map);
	}
	//add
	public int add(MoimBoardDTO boardDTO) {
		return sqlSession.insert(NAMESPACE+"add", boardDTO);
	}
	public int fileAdd(MoimBoardFileDTO boardFileDTO) {
		return sqlSession.insert(NAMESPACE+"fileAdd", boardFileDTO);
	}
	

	
}
