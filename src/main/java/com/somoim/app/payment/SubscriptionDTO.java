package com.somoim.app.payment;

import java.sql.Date;

public class SubscriptionDTO {
	
	private Long subNum;
	private String userName;
	private Long payNum;
	private Date subDate;
	private Date endSubDate;
	private Integer subStatus;
	
	
	public Long getSubNum() {
		return subNum;
	}
	public void setSubNum(Long subNum) {
		this.subNum = subNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Long getPayNum() {
		return payNum;
	}
	public void setPayNum(Long payNum) {
		this.payNum = payNum;
	}
	public Date getSubDate() {
		return subDate;
	}
	public void setSubDate(Date subDate) {
		this.subDate = subDate;
	}
	public Date getEndSubDate() {
		return endSubDate;
	}
	public void setEndSubDate(Date endSubDate) {
		this.endSubDate = endSubDate;
	}
	public Integer getSubStatus() {
		return subStatus;
	}
	public void setSubStatus(Integer subStatus) {
		this.subStatus = subStatus;
	}
	
	
}
