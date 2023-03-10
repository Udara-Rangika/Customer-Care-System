package com.payment;

public class Payment {
	private int paymentId;
	String paymentMethod;
	String service;
	String amount;
	String cardNumber;
	String mm;
	String yy;
	String cvv;
	
	public Payment(int paymentId, String paymentMethod, String service, String amount, String cardNumber, String mm, String yy, String cvv) {
		
		this.paymentId = paymentId;
		this.paymentMethod = paymentMethod;
		this.service = service;
		this.amount = amount;
		this.cardNumber = cardNumber;
		this.mm = mm;
		this.yy = yy;
		this.cvv = cvv;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public String getService() {
		return service;
	}

	public String getAmount() {
		return amount;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public String getMm() {
		return mm;
	}

	public String getYy() {
		return yy;
	}

	public String getCvv() {
		return cvv;
	}

	
}
