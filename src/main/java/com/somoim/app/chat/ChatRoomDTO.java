package com.somoim.app.chat;

import java.util.List;

import com.somoim.app.member.MemberDTO;

public class ChatRoomDTO extends MemberDTO{

	private Long chatRoomNum;
	private List<MemberDTO> memberDTOs;
	
	public Long getChatRoomNum() {
		return chatRoomNum;
	}
	public void setChatRoomNum(Long chatRoomNum) {
		this.chatRoomNum = chatRoomNum;
	}
	public List<MemberDTO> getMemberDTOs() {
		return memberDTOs;
	}
	public void setMemberDTOs(List<MemberDTO> memberDTOs) {
		this.memberDTOs = memberDTOs;
	}
	
	
	
}
