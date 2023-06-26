package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Engineer_Add
 */
public class Engineer_Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Engineer_Add() {
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


		
		
		String eng_name = request.getParameter("eng_name");
		String eng_email = request.getParameter("eng_email");
		String eng_cantact = request.getParameter("eng_camtact");
		String eng_department = request.getParameter("eng_password");
		
		try
		{
			
			Connection con = showDB.getCon();
			PreparedStatement ps1 =con.prepareStatement("insert into engineers_account values(?,?,?,?,?)"); 
				
			ps1.setInt(1,0);
			ps1.setString(2, eng_name);
			ps1.setString(3, eng_email);
			ps1.setString(4, eng_cantact);
			ps1.setString(5, eng_department);

		
			int i=ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("add_engineer.html");
				
				
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
