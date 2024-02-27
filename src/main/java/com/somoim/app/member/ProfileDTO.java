package com.somoim.app.member;

import com.somoim.app.files.FileDTO;

public class ProfileDTO extends FileDTO {

	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "ProfileDTO [userName=" + userName + ", getUserName()=" + getUserName() + ", getFileNum()="
				+ getFileNum() + ", getFileName()=" + getFileName() + ", getOriName()=" + getOriName() + "]";
	}
	
	
}
