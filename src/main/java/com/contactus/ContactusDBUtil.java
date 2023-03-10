package com.contactus;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ContactusDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from contactus where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Contactus> getcontactus(String userName) {
		
		ArrayList<Contactus> contactus = new ArrayList<Contactus>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from contactus where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String subject = rs.getString(6);
				String district = rs.getString(7);
				String password = rs.getString(8);
				
				Contactus cont = new Contactus(id,name,email,phone,username,subject,district,password);
				contactus.add(cont);
			}
			
		} catch (Exception e) {
			
		}
		
		return contactus;	
	}
    
    public static boolean insertcontactus(String name, String email, String phone, String username, String subject, String district, String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into contactus values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+subject+"','"+district+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecontactus(String id, String name, String email, String phone, String username, String subject, String district, String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update contactus set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',subject='"+subject+"',district='"+district+"',password='"+password+"'"
    				+ "where id='"+id+"'";
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
 
    public static List<Contactus> getcontactusDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Contactus> cont = new ArrayList<Contactus>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from contactus where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String username = rs.getString(5);
    			String subject = rs.getString(6);
    			String district = rs.getString(7);
    			String password = rs.getString(8);
    			
    			Contactus c = new Contactus(id,name,email,phone,username,subject,district,password);
    			cont.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cont;	
    }
    
    
    public static boolean deletecontactus(String id) {
    	
    	int convId = Integer.parseInt(id); 
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from contactus where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }    
}
