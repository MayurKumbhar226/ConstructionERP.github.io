package com.erp.services;

public class UserData {

	
	static String email;
	static String name;
	static String password;
	static String pname;
	static String Empname;
	static int projectID;


	public static int getProjectID() {
		return projectID;
	}
	public static void setProjectID(int projectID) {
		UserData.projectID = projectID;
	}
	public static String getEmpname() {
		return Empname;
	}
	public static void setEmpname(String empname) {
		Empname = empname;
	}
	public static String getPname() {
		return pname;
	}
	public static void setPname(String pname) {
		UserData.pname = pname;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		UserData.password = password;
	}
	public static String getEmail() {
		
		return email;
	}
	public static void setEmail(String email) {
		
		UserData.email = email;
	}
	public static String getName() {
		
		return name;
	}
	public static void setName(String name) {
		
		UserData.name = name;
	}
	
}
