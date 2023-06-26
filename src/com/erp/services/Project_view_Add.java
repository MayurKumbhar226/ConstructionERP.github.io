package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Project_view_Add
 */
public class Project_view_Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Project_view_Add() {
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
		
		
		

		
		int dep_pi = Integer.parseInt(request.getParameter("project_id"));
		String dTaskTitle1 = request.getParameter("dTitle");
		String dep_task_ass = request.getParameter("dAssig");
		String dep_task_pri = request.getParameter("dPrio");
		String date_start1 = request.getParameter("ddate_start");
		String date_end = request.getParameter("ddate_end");
		
		String deptasklocation1 = request.getParameter("responsible_dep");
		String deptasklocation11 = request.getParameter("d_task_location");

		
		try
		{
			Connection con = showDB.getCon();
			PreparedStatement ps =con.prepareStatement("insert into add_task_emp values(?,?,?,?,?,?)"); 
		    
			
			
		    ps.setInt(1,dep_pi);
		    ps.setString(2,dTaskTitle1);
		    ps.setString(3,dep_task_ass);
		    ps.setString(4,dep_task_pri);
		    ps.setString(5,date_start1);
		    ps.setString(6, date_end);
			int i = ps.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("test.html");
				
				
			}

			
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
			
		}


		
		
		

	}

}
