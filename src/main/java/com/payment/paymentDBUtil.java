package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class paymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Payment> validate (String cardnumber, String mm, String yy, String cvv){
		
		ArrayList<Payment> paym = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where cardNumber = '"+cardnumber+"' and mm = '"+mm+"' and yy = '"+yy+"' and cvv = '"+cvv+"'";
			rs = stmt.executeQuery(sql);
		
			if (rs.next()) {
				int paymentId = rs.getInt(1);
				String paymentMethod = rs.getString(2);
				String service = rs.getString(3);
				String amount = rs.getString(4);
				String cardNumber = rs.getString(5);
				String mmp = rs.getString(6);
				String yyp = rs.getString(7);
				String cvvp = rs.getString(8);
				
				Payment p = new Payment (paymentId, paymentMethod, service, amount, cardNumber, mmp, yyp, cvvp);
				paym.add(p);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return paym;
	}
	
	public static boolean insertpayment(String paymentMethod, String service, String amount, String cardNumber, String mm, String yy, String cvv) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment values(0, '"+paymentMethod+"', '"+service+"', '"+amount+"', '"+cardNumber+"', '"+mm+"', '"+yy+"', '"+cvv+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0 ) {
				
				isSuccess = true;
				
			} else {
				
				isSuccess = false;
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	public static boolean updatepayment(String paymentId, String paymentMethod, String service, String amount, String cardNumber, String mm, String yy, String cvv) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update payment set paymentMethod = '"+paymentMethod+"', service = '"+service+"', amount = '"+amount+"', cardNumber = '"+cardNumber+"', mm = '"+mm+"', yy = '"+yy+"', cvv = '"+cvv+"'"
					+ " where paymentId = '"+paymentId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			} else {
				
				isSuccess = false;
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	public static List<Payment> getPaymentDetails (String paymentId){
		
		int convertedpayID = Integer.parseInt(paymentId);
		
		ArrayList<Payment> paym = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where paymentId = '"+convertedpayID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int paymentIdp = rs.getInt(1);
				String paymentMethod = rs.getString(2);
				String service = rs.getString(3);
				String amount = rs.getString(4);
				String cardNumber = rs.getString(5);
				String mm = rs.getString(6);
				String yy = rs.getString(7);
				String cvv = rs.getString(8);
				
				Payment p = new Payment(paymentIdp, paymentMethod, service, amount, cardNumber, mm, yy, cvv);
				paym.add(p);
				
			}
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return paym;
	}
	
	public static boolean deletepayment(String paymentId) {
		
		int convId = Integer.parseInt(paymentId);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from payment where paymentId = '"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			} else {
				
				isSuccess = false;
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
