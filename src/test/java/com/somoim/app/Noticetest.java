package com.somoim.app;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.somoim.app.board.BoardDTO;
import com.somoim.app.board.notice.NoticeDAO;
import com.somoim.app.util.Pager;




public class Noticetest extends JUnitTest{

	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void test() throws Exception {
		this.getListTest();
	}
	
	
	public void getListTest()throws Exception{

	}
	
	
}
