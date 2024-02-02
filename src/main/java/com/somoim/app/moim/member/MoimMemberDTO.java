package com.somoim.app.moim.member;

import java.util.Date;
import java.util.List;

import com.somoim.app.moim.MoimDTO;
import com.somoim.app.moim.member.role.MoimRoleDTO;

public class MoimMemberDTO {
	private String userName;
	private Long moimRoleNum;
	private Long moimNum;
	private Date joinDate;
	

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Long getMoimRoleNum() {
		return moimRoleNum;
	}
	public void setMoimRoleNum(Long moimRoleNum) {
		this.moimRoleNum = moimRoleNum;
	}
	public Long getMoimNum() {
		return moimNum;
	}
	public void setMoimNum(Long moimNum) {
		this.moimNum = moimNum;
	}

	
	
}
