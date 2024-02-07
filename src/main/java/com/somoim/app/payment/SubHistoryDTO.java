package com.somoim.app.payment;

import java.sql.Date;

public class SubHistoryDTO {
	
	private Long payNum;
	private Long subNum;
	private Date payDay;
	private Integer payPrice;
	
	public Long getPayNum() {
		return payNum;
	}
	public void setPayNum(Long payNum) {
		this.payNum = payNum;
	}
	public Long getSubNum() {
		return subNum;
	}
	public void setSubNum(Long subNum) {
		this.subNum = subNum;
	}
	public Date getPayDay() {
		return payDay;
	}
	public void setPayDay(Date payDay) {
		this.payDay = payDay;
	}
	public Integer getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(Integer payPrice) {
		this.payPrice = payPrice;
	}
	
	
}
