package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Department_Add
 */
public class Department_Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Department_Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

	
		
		String dep_name = request.getParameter("dep_name");
		String dep_email = request.getParameter("dep_email");
		String dep_cantact = request.getParameter("dep_cantact");
		String dep_address = request.getParameter("dep_add");
		String dep_password = request.getParameter("dep_password");


		
		try
		{
			
			Connection con = showDB.getCon();
			PreparedStatement ps1 =con.prepareStatement("insert into dep_accounts values(?,?,?,?,?,?)"); 
				
			ps1.setInt(1,0);
			ps1.setString(2, dep_name);
			ps1.setString(3, dep_email);
			ps1.setString(4, dep_cantact);
			ps1.setString(5, dep_address);
			ps1.setString(6, dep_password);

		
			int i=ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("add_department.html");
				
				
			}	
			else
			{
				
				response.sendRedirect("404.html");

				System.out.println("Failed");
			}
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
			
		}
		
		
	}
		
}