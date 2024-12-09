package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
	
	private static String url = "jdbc:mysql://localhost:3306/property";
	private static String user = "root";
	private static String pass ="Senuja@123";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
		}catch(Exception e) {
			System.out.print("Database connection is not successful");
			e.printStackTrace();
		}
		
		return con;
	}

}
