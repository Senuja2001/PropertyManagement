package com.customer;

public class Create {
	private int id;
	private String name;
	private String email;
	private String gender;
	private String phone;
	private String location;
	private String username;
	private String password;
	
	
	public Create(int id, String name, String email, String gender, String phone, String location, String username,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.location = location;
		this.username = username;
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
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
