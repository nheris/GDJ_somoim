package com.somoim.app.board.qna;

import oracle.sql.DATE;

public class ReplyDTO {

	private Long boardReplyNum;
	private String userName;
	private Long boardNum;
	private Long boardReplyText;
	private DATE boardReplyDate;
	public Long getBoardReplyNum() {
		return boardReplyNum;
	}
	public void setBoardReplyNum(Long boardReplyNum) {
		this.boardReplyNum = boardReplyNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Long getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(Long boardNum) {
		this.boardNum = boardNum;
	}
	public Long getBoardReplyText() {
		return boardReplyText;
	}
	public void setBoardReplyText(Long boardReplyText) {
		this.boardReplyText = boardReplyText;
	}
	public DATE getBoardReplyDate() {
		return boardReplyDate;
	}
	public void setBoardReplyDate(DATE boardReplyDate) {
		this.boardReplyDate = boardReplyDate;
	}
	
	
	
	
	
}
