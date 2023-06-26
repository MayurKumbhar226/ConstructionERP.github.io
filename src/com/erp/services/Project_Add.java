package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Project_Add
 */
public class Project_Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Project_Add() {
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
		
		
		
		/*"project_name"
		"project_cantact"
		 "plan_image"*/
		String project_name = request.getParameter("project_name");
		String project_cantact = request.getParameter("project_cantact");
	///	String plan_image = request.getParameter("plan_image");


		try
		{
			
			Connection con = showDB.getCon();
			PreparedStatement ps1 =con.prepareStatement("insert into projet_accounts values(?,?,?)"); 
				
			ps1.setInt(1,0);
			ps1.setString(2, project_name);
			ps1.setString(3, project_cantact);
			//ps1.setString(4, dep_cantact);
			

		
			int i=ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("create_new_project.html");
				
				
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