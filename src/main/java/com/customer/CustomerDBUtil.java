package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getcustomer(String userName){
		
		ArrayList<Customer> cus = new ArrayList<>();		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
				
				Customer c = new Customer(id,fname,lname,email,phone,userU,passU);
				cus.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean insertcustomer(String fname, String lname, String email, String phone, String username, String password) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values(0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id, String fname, String lname, String email, String phone, String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set fname='"+fname+"',lname='"+lname+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'" + "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String Id) {
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);
				
				Customer c = new Customer(id,fname,lname,email,phone,username,password);
				cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean deletecustomer(String id) {
		
		int convertedID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='"+convertedID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
