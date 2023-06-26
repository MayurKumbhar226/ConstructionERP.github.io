package com.erp.services;

import java.sql.*;

public class showDB 
{
	static Connection con = null;
	public static Connection getCon() 
	{
		try 
		{
			if(con == null)
			{
				Class.forName("com.mysql.jdbc.Driver"); 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/construction_db","root","");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}
}
