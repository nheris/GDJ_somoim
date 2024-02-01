package com.somoim.app.moim.member;

import java.util.List;

import com.somoim.app.moim.MoimDTO;
import com.somoim.app.moim.member.role.MoimRoleDTO;

public class MoimMemberDTO {
	private String userName;
	private List<MoimRoleDTO> moimRoleDTOs;
	private List<MoimDTO> moimDTOs;
	
	public List<MoimDTO> getMoimDTOs() {
		return moimDTOs;
	}
	public void setMoimDTOs(List<MoimDTO> moimDTOs) {
		this.moimDTOs = moimDTOs;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public List<MoimRoleDTO> getMoimRoleDTOs() {
		return moimRoleDTOs;
	}
	public void setMoimRoleDTOs(List<MoimRoleDTO> moimRoleDTOs) {
		this.moimRoleDTOs = moimRoleDTOs;
	}
	
}
