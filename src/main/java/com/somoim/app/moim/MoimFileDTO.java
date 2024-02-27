package com.somoim.app.moim;

import com.somoim.app.files.FileDTO;

public class MoimFileDTO extends FileDTO{

	private Long moimNum;

	public Long getMoimNum() {
		return moimNum;
	}

	public void setMoimNum(Long moimNum) {
		this.moimNum = moimNum;
	}

	@Override
	public String toString() {
		return "MoimFileDTO [moimNum=" + moimNum + ", getFileNum()=" + getFileNum() + ", getFileName()=" + getFileName()
				+ ", getOriName()=" + getOriName() + "]";
	}	
}
