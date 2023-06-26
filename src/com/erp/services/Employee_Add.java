package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.services.*;;

/**
 * Servlet implementation class Employee_Add
 */
public class Employee_Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee_Add() {
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
		
		
		String emp_name = request.getParameter("emp_name");
		String emp_email = request.getParameter("emp_email");
		String emp_cantact = request.getParameter("emp_camtact");
		String emp_department = request.getParameter("emp_department");
		String emp_password = request.getParameter("emp_password");



		
		try
		{
			
			Connection con = showDB.getCon();
			PreparedStatement ps1 =con.prepareStatement("insert into emp_accounts values(?,?,?,?,?,?)"); 
				
			ps1.setInt(1,0);
			ps1.setString(2, emp_name);
			ps1.setString(3, emp_email);
			ps1.setString(4, emp_cantact);
			ps1.setString(5, emp_department);
			ps1.setString(6, emp_password);

		
			int i=ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("add_employee.html");
				
				
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
