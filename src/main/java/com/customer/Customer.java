package com.customer;

public class Customer {
    private int id;
    private String name;
    private String email;
    private String gender;
    private String phone;
    private String location;
    private String userName;
    private String password;
    
	public Customer(int id, String name, String email, String gender, String phone, String location, String userName,
			String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.location = location;
		this.userName = userName;
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
	public String getGender() {
		return gender;
	}
	public String getPhone() {
		return phone;
	}
	public String getLocation() {
		return location;
	}
	public String getUserName() {
		return userName;
	}
	public String getPassword() {
		return password;
	}
	   
}
