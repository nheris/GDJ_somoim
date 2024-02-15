package com.somoim.app.board.qna;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class ReplyDAO {

@Autowired
private SqlSession sqlSession;

private final String namespace="com.somoim.app.board.qna.ReplyDAO.";



public int setDelete(ReplyDTO replyDTO)throws Exception{
	return sqlSession.delete(namespace+"setDelete", replyDTO);
}

public int setReply(ReplyDTO replyDTO)throws Exception{
	return sqlSession.insert(namespace+"setReply", replyDTO);
}

public Long getTotalCount(ReplyDTO replyDTO)throws Exception{
	return sqlSession.selectOne(namespace+"getTotalCount", replyDTO);
}

public List<ReplyDTO> getList(Map<String, Object> map)throws Exception{
	return sqlSession.selectList(namespace+"getList", map);
}

	
	
}
