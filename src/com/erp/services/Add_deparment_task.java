package com.erp.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add_deparment_task
 */
public class Add_deparment_task extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_deparment_task() {
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
					String dTaskTitle1 = request.getParameter("empTitle");
					String dep_task_ass = request.getParameter("empAssig");
					String dep_task_pri = request.getParameter("EmpPrio");
					String date_start1 = request.getParameter("empdate_start");
					String date_end = request.getParameter("empdate_end");
					
					String deptasklocation1 = request.getParameter("responsible_emp");
					String deptasklocation11 = request.getParameter("emp_task_location");

					
					try
					{
						Connection con = showDB.getCon();
						PreparedStatement ps =con.prepareStatement("insert into add_task_dep values(?,?,?,?,?,?,?,?)"); 
					    
						
						
					    ps.setInt(1,dep_pi);
					    ps.setString(2,dTaskTitle1);
					    ps.setString(3,dep_task_ass);
					    ps.setString(4,dep_task_pri);
					    ps.setString(5,date_start1);
					    ps.setString(6, date_end);
					    ps.setString(7, deptasklocation1);
					    ps.setString(8, deptasklocation11);
					    
					    
					    
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
