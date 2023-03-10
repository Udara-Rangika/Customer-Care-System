package com.contactus;

public class Contactus {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String subject;
    private String district;
    private String password;
    
    public Contactus(int id, String name, String email, String phone, 
    		String userName, String subject, String district, String password) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.subject = subject;
	this.district = district;
	this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getUserName() {
        return userName;
    }
    
    public String getsubject() {
    	return subject;
    }
    public String getdistrict() {
    	return district;
    }
    public String getPassword() {
        return password;
    }    
}
