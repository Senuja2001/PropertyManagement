package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	public static ArrayList<Customer> validate(String userName,String password){
		
		
		
		
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		String url = "jdbc:mysql://localhost:3306/property";
		String user = "root";
		String pass ="Senuja@123";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url,user,pass);
			stmt = con.createStatement();
			
			String sql = "select * from customer_login where username='"+userName+"' and password='"+password+"'";
			 rs = stmt.executeQuery(sql);

			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String gender = rs.getString(4);
				String phone = rs.getString(5);
				String location = rs.getString(6);
				String userU = rs.getString(7);
				String passU = rs.getString(8);

				Customer c = new Customer(id,name,email,gender,phone,location,userU,passU);
				cus.add(c);
			}
		}
		catch (Exception e){
			e.printStackTrace();
			
		}
		return cus;
	}


public static boolean Create(String name, String email, String gender, String phone, String location, String username, String password) {
		
		boolean isSuccess = false;
		
		
		
		String url = "jdbc:mysql://localhost:3306/property";
		String user = "root";
		String pass ="Senuja@123";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user, pass);
			stmt = con.createStatement();
			String sql = "insert into customer_login values (0,'"+name+"','"+email+"','"+gender+"','"+phone+"','"+location+"','"+username+"','"+password+"') ";
			int rs = stmt.executeUpdate(sql);
			
			
			
			
			if(rs > 0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}

	
public static boolean updateCustomer(int id,String name, String email, String gender, String phone, String location, String username, String password) {
	
	boolean isSuccess=false;
	
	try {
		String url = "jdbc:mysql://localhost:3306/property";
		String user = "root";
		String pass ="Senuja@123";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(url,user, pass);
		stmt = con.createStatement();
		String sql = "update customer_login set name='"+name+"',email='"+email+"',gender='"+gender+"',phone='"+phone+"',location='"+location+"',username='"+username+"',password='"+password+"'where id='"+id+"'";
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

public static List<Customer>getCustomerD(String id){
	ArrayList<Customer> cus = new ArrayList<>();
	
	int convertedID = Integer.parseInt(id);	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(id);
		stmt = con.createStatement();
		String sql = "select * from customer_login where id = '"+convertedID+"'";
		 rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int cus_id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String gender = rs.getString(4);
			String phone = rs.getString(5);
			String location = rs.getString(6);
			String userU = rs.getString(7);
			String passU = rs.getString(8);

			Customer c = new Customer(cus_id,name,email,gender,phone,location,userU,passU);
			cus.add(c);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return cus;
	}

	public static List<Customer> getAllCustomer(){
		
		List<Customer> customers = new ArrayList<>();
		
		try {
			con = Database.getConnection();
			stmt = con.createStatement();
			String sql = "select id , name , email, gender, phone, location, username, password from customer_login";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String phone = rs.getString("phone");
				String location = rs.getString("location");
				String username = rs.getString("username");
				String password = rs.getString("password");
				
				Customer cus = new Customer(id, name, email, gender,phone,location, username, password);
				customers.add(cus);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return customers;
	}
	
	public static boolean deleteCustomer(int ID) {
		
		boolean isSuccss = false;
		
		int id = ID;
		
		try {
			con = Database.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from customer_login where id= '"+id+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccss = true;
			}else {
				isSuccss = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccss;
	}
}
