package com.somoim.app.moim;

import java.util.Date;

import com.somoim.app.moim.member.MoimMemberDTO;

public class MoimDTO {
	private Long moimNum;
	private String moimName;
	private String moimHead;
	private String moimRegion;
	private String moimCategory;
	private Long moimMemCount;
	private Date moimDate;
	private String moimText;
	private MoimMemberDTO moimMemberDTO;
	
	
	
	public MoimMemberDTO getMoimMemberDTO() {
		return moimMemberDTO;
	}
	public void setMoimMemberDTO(MoimMemberDTO moimMemberDTO) {
		this.moimMemberDTO = moimMemberDTO;
	}
	
	
	
	public String getMoimText() {
		return moimText;
	}
	public void setMoimText(String moimText) {
		this.moimText = moimText;
	}
	public Long getMoimNum() {
		return moimNum;
	}
	public void setMoimNum(Long moimNum) {
		this.moimNum = moimNum;
	}
	public String getMoimName() {
		return moimName;
	}
	public void setMoimName(String moimName) {
		this.moimName = moimName;
	}
	public String getMoimHead() {
		return moimHead;
	}
	public void setMoimHead(String moimHead) {
		this.moimHead = moimHead;
	}
	public String getMoimRegion() {
		return moimRegion;
	}
	public void setMoimRegion(String moimRegion) {
		this.moimRegion = moimRegion;
	}
	public String getMoimCategory() {
		return moimCategory;
	}
	public void setMoimCategory(String moimCategory) {
		this.moimCategory = moimCategory;
	}
	public Long getMoimMemCount() {
		return moimMemCount;
	}
	public void setMoimMemCount(Long moimMemCount) {
		this.moimMemCount = moimMemCount;
	}
	public Date getMoimDate() {
		return moimDate;
	}
	public void setMoimDate(Date moimDate) {
		this.moimDate = moimDate;
	}
	
}
