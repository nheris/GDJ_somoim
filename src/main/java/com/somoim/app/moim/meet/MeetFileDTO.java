package com.somoim.app.moim.meet;

import com.somoim.app.files.FileDTO;

public class MeetFileDTO extends FileDTO{
	private Long meetNum;

	public Long getMoimNum() {
		return meetNum;
	}

	public void setMoimNum(Long moimNum) {
		this.meetNum = moimNum;
	}

	
}
