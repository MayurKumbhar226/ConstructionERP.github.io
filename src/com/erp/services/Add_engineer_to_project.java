package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add_engineer_to_project
 */
public class Add_engineer_to_project extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_engineer_to_project() {
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
		




		int dep_pi = Integer.parseInt(request.getParameter("project_id11"));
		String empname = request.getParameter("responsible_engi");
		String empEmail = request.getParameter("project_eng_emial");


		
		try
		{
			Connection con = showDB.getCon();
			PreparedStatement ps =con.prepareStatement("insert into add_engineer_task values(?,?,?)"); 
		    
			
			
		    ps.setInt(1,dep_pi);
		    ps.setString(2, empname);
		    ps.setString(3, empEmail);


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
