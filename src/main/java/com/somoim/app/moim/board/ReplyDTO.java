package com.somoim.app.moim.board;

import java.util.Date;

public class ReplyDTO {
	private Long replyNum;
	private String userName;
	private Long boardNum;
	private String replyText;
	private Date replyDate;
	private String replyWriter;
	
	public Long getReplyNum() {
		return replyNum;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	public void setReplyNum(Long replyNum) {
		this.replyNum = replyNum;
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
	public String getReplyText() {
		return replyText;
	}
	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	
	
}
