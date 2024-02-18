package com.somoim.app.payment;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PaymentDTO {

	private String orderId;
	private String paymentKey;
	private String customerKey;
	private String keyName;
	private Long pTypeNum;
	private Date paymentDay;
	private Long amount;
	
	


	
	@Override
	public String toString() {
		return "PaymentDTO [orderId=" + orderId + ", paymentKey=" + paymentKey + ", customerKey=" + customerKey
				+ ", keyName=" + keyName + ", pTypeNum=" + pTypeNum + ", paymentDay=" + paymentDay + ", amount="
				+ amount + "]";
	}

	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getPaymentKey() {
		return paymentKey;
	}
	public void setPaymentKey(String paymentKey) {
		this.paymentKey = paymentKey;
	}
	public String getCustomerKey() {
		return customerKey;
	}
	public void setCustomerKey(String customerKey) {
		this.customerKey = customerKey;
	}
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	public Long getpTypeNum() {
		return pTypeNum;
	}
	public void setpTypeNum(Long pTypeNum) {
		this.pTypeNum = pTypeNum;
	}
	public Date getPaymentDay() {
		return paymentDay;
	}
	public void setPaymentDay(Date paymentDay) {
		this.paymentDay = paymentDay;
	}
	public Long getAmount() {
		return amount;
	}
	public void setAmount(Long amount) {
		this.amount = amount;
	}

	
}
