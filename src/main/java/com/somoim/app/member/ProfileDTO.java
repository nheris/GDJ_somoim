package com.somoim.app.member;

public class ProfileDTO {
	private Long fileNum;
	private String userName;
	private String fileName;
	private String oirName;
	
	
	public Long getFileNum() {
		return fileNum;
	}
	public void setFileNum(Long fileNum) {
		this.fileNum = fileNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOirName() {
		return oirName;
	}
	public void setOirName(String oirName) {
		this.oirName = oirName;
	}
}
