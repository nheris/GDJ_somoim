package com.somoim.app.member;

import java.util.List;

import com.somoim.app.member.role.RoleDTO;

public class MemberDTO {
	
	private String userName;
	private String password;
	private String nickName;
	private String name;
	private String userBirth;
	private String address;
	private String phone;
	private String email;
	
	private ProfileDTO profile;
	private List<RoleDTO> roleDTO;
	
	
	public List<RoleDTO> getRoleDTO() {
		return roleDTO;
	}
	public void setRoleDTO(List<RoleDTO> roleDTO) {
		this.roleDTO = roleDTO;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	
	public ProfileDTO getProfile() {
		return profile;
	}
	public void setProfile(ProfileDTO profile) {
		this.profile = profile;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
