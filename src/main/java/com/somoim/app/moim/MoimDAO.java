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
	
	//list
	public List<MoimDTO> getList(MemberDTO memberDTO) {
		return sqlSession.selectList(NAMESPACE+"getList", memberDTO);
	}
	
	//add
	//모임 개설
	public int add(MoimDTO moimDTO) {
		return sqlSession.insert(NAMESPACE+"add", moimDTO);
	}
	//모임이미지 저장
	public int fileAdd(MoimFileDTO moimFileDTO) {
		return sqlSession.insert(NAMESPACE+"fileAdd", moimFileDTO);
	}
	//모임장 추가
	public int moimHeadAdd(MoimDTO moimDTO) {
		return sqlSession.insert(NAMESPACE+"moimHeadAdd", moimDTO);
	}
	
	
	//모임 멤버 가입
//	public int moimMemAdd(MoimDTO moimDTO) {
//		return sqlSession.insert(NAMESPACE+"moimMemAdd", moimDTO);
//	}
	
	
	
	
}
