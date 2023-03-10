package com.service;

public class Customer {
	
	private int id;
	private String name;
	private String date;
	private String email;
	private String mobile;
	public Customer(int id, String name, String email, String mobile,String date) {
		
		this.id = id;
		this.name = name;
		this.date = date;
		this.email = email;
		this.mobile = mobile;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getMobile() {
		return mobile;
	}
	
}
