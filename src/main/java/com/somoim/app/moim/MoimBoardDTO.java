package com.somoim.app.moim;

import java.sql.Date;

public class MoimBoardDTO {
	private Long boardNum;
	private Long moimNum;
	private String userName;
	private String boardTitle;
	private String boardText;
	private Date boardDate;
	private Long boardClick;
	private Long boardLike;
	
	
	
	
	public Long getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(Long boardNum) {
		this.boardNum = boardNum;
	}
	public Long getMoimNum() {
		return moimNum;
	}
	public void setMoimNum(Long moimNum) {
		this.moimNum = moimNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardText() {
		return boardText;
	}
	public void setBoardText(String boardText) {
		this.boardText = boardText;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public Long getBoardClick() {
		return boardClick;
	}
	public void setBoardClick(Long boardClick) {
		this.boardClick = boardClick;
	}
	public Long getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(Long boardLike) {
		this.boardLike = boardLike;
	}
	
	
	
}
