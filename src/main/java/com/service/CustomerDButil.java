 package com.service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate (String name,String mobile,String email){
		
		ArrayList<Customer> cus = new ArrayList<>();
	
		try {
		   
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from service where mobile='"+mobile+"' and cname='"+name+"' and email='"+email+"'";
			 rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String mobile1 = rs.getString(3);
				String email1 = rs.getString(4);
				String date1 = rs.getString(5);
					
				Customer c = new Customer(id,name1,email1,mobile1,date1);
				cus.add(c);
			}
		}
		
		 catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	} 
	
	public static boolean insertCustomer(String date,String name,String mobile,String email) {
		
		boolean isSuccess = false;
		
		
		try {
		    
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into service values(0,'"+name+"','"+mobile+"','"+email+"','"+date+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
	
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	public static boolean updatecustomer(String id,String name,String mobile,String email,String date) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update service set cname='"+name+"', mobile='"+mobile+"',date='"+date+"', email='"+email+"' WHERE id='"+id+"'";
			
		
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			
			System.out.println(e.getMessage());
		}
		
		return isSuccess;
	}

	
	public static boolean deleteCustomer(String Id) {
		
		//int convId = Integer.parseInt(Id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete   from service where id='"+Id+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	


public static List<Customer> getCustomerDetails(String id){
		
	//int convId = Integer.parseInt(id);
	
		ArrayList<Customer> cs = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from service where id='"+id+"'";
			rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id2 = rs.getInt(1);
			String name2 = rs.getString(2);
			String mobile2 = rs.getString(3);
			String email2 = rs.getString(4);
			String date2 = rs.getString(5);
			
			Customer c = new Customer(id2,name2,mobile2,email2,date2);
			cs.add(c);
		}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		
		}
		
		return cs;
		
	}
}


