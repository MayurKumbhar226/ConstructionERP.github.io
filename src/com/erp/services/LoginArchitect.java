package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class LoginArchitect
 */
public class LoginArchitect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginArchitect() {
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
		



	/*	try
		{

			String admin_email = request.getParameter("Archiect_email");
			String admin_pass = request.getParameter("Archiect_pass");
			


			Connection con = showDB.getCon();
			PreparedStatement ps5 = con.prepareStatement("select * from engineers_account where  engineer_email=? and engineer_password=?");
			ps5.setString(1, admin_email);
			ps5.setString(2, admin_pass);
			ResultSet rs5 = ps5.executeQuery();
			
			if(rs5.next())
			{
				UserData.setEmail(admin_email);
				response.sendRedirect("AechitectDetails.html");

				
			}
			else
			{
				
				
			}

			
		}
		catch(Exception  e)
		{
			e.printStackTrace();
			
			
		}
	}
}*/
		String eng_email = request.getParameter("Archiect_email");
		String eng_pass = request.getParameter("Archiect_pass");


		try
		{
			Connection con=showDB.getCon();
			PreparedStatement ps1=con.prepareStatement("select * from engineers_account where engineer_email=? and engineer_password=?");
			ps1.setString(1, eng_email);
			ps1.setString(2, eng_pass);
			ResultSet rs=ps1.executeQuery();
			
			if(rs.next())
			{
				UserData.setEmail(eng_email);
				
				UserData.setEmail(eng_email);
				UserData.setPassword(eng_pass);
				
				response.sendRedirect("AechitectDetails.html");

				
				
				
			}
			else
			{
				response.sendRedirect("failedCng.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}


