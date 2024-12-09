package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class getCustomer{
	public static List<Customer> getCustomerD(int id) {
	
	//create  connection
	
	String url = "jdbc:mysql://localhost:3306/property";
	String user = "root";
	String pass ="Senuja@123";
	
	ArrayList<Customer> cusDetails = new ArrayList<>();
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,user, pass);
		Statement stmt = con.createStatement();
		String sql = "select * from customer_login where id='"+id+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int ID = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String gender = rs.getString(4);
			String phone = rs.getString(5);
			String location	 = rs.getString(6);
			String username = rs.getString(7);
			String password = rs.getString(8);
			
			Customer cDetails = new Customer(ID, name, email, gender, phone, location, username, password);
			cusDetails.add(cDetails);
		}
		
		
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return cusDetails;
	
	}
	
	public static boolean updateCustomer(int id,String name, String email, String gender, String phone, String location, String username, String password) {
		
		boolean isSuccess=false;
		
		try {
			String url = "jdbc:mysql://localhost:3306/property";
			String user = "root";
			String pass ="Senuja@123";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user, pass);
			Statement stmt = con.createStatement();
			String sql = "update customer_login set name='"+name+"',email='"+gender+"',phone='"+phone+"',location='"+location+"',username='"+username+"',password='"+password+"'where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

}
