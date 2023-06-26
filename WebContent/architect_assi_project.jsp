<%@page import="com.erp.services.UserData"%>
<%@page import = "java.sql.*" %>
<%@page import = "com.erp.services.showDB"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Construction & Building HTML Template">
<meta name="author" content="AlexaTheme">
<title>Indico | Construction & Building HTML Template</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

<link rel="stylesheet" href="css/fontawesome.min.css">

<link rel="stylesheet" href="css/themify-icons.css">

<link rel="stylesheet" href="css/elegant-line-icons.css">

<link rel="stylesheet" href="css/elegant-font-icons.css">

<link rel="stylesheet" href="css/flaticon.css">

<link rel="stylesheet" href="css/animate.min.css">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/slick.css">

<link rel="stylesheet" href="css/slider.css">

<link rel="stylesheet" href="css/odometer.min.css">

<link rel="stylesheet" href="css/venobox/venobox.css">

<link rel="stylesheet" href="css/owl.carousel.css">

<link rel="stylesheet" href="css/main.css">

<link rel="stylesheet" href="css/responsive.css">
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
<div class="form-title">
							<h4><center> -: &nbsp; ASSIGNED EMPLOYEES TO ENGINEER &nbsp;:- </center></h4>
							</div>
								<table class="table">
								  <thead class="thead-dark">
						 		
								  <tr>
								  <th>Employee ID:</th>
								    <th>Name:</th>
								    <th>Email :</th>  
								    <th>Contact :</th> 
								     <th>Job:</th>
								  </tr>
								
							<%
							try{
								String em = UserData.getEmail();
								Connection con = showDB.getCon();
							//	PreparedStatement ps = con.prepareStatement("select * from emp_accounts");
								

								PreparedStatement ps = con.prepareStatement("select * from emp_accounts where emp_email=?");
								ps.setString(1, em);
								ResultSet rs =ps.executeQuery();
								
								
								while(rs.next())
								{%>
								  <tr>
								    <td><%=rs.getString(1)%></td>
								 	<td><%=rs.getString(2) %></td>
								     <td><%=rs.getString(3) %></td>
								 	 <td><%=rs.getString(4) %></td>
								 	<td><%=rs.getString(5) %></td>
								 	 
								     
								 
								     
								        
								  </tr>
									
								<%
								}	
								%>	
							<%
							} 
							catch(Exception e)
							{
								e.printStackTrace();
							}
							%>
							
							
							</table>
							


							<div class="form-title">
							<h4><center> -: &nbsp; ASSIGNED TASK TO EMPLOYEE &nbsp;:- </center></h4>
							</div>
								<table class="table">
								  <thead class="thead-dark">
						 		
								  <tr>
								  <th>Employee ID:</th>
								    <th>Employee task:</th>
								    <th>Employee Assigned:</th> 
								    <th>Employee priority :</th>  
								    <th>start date:</th> 
								     <th>end date:</th>
								  </tr>
								
							<%
							try{
							//	String em1 = UserData.get();
								Connection con = showDB.getCon();
							//	PreparedStatement ps = con.prepareStatement("select * from emp_accounts");
								

								PreparedStatement ps1 = con.prepareStatement("select * from add_task_emp");
								//ps1.setString(1, em1);
								ResultSet rs1 =ps1.executeQuery();
								
								
								while(rs1.next())
								{%>
								  <tr>
								    <td><%=rs1.getString(1)%></td>
								 	<td><%=rs1.getString(2) %></td>
								     <td><%=rs1.getString(3) %></td>
								 	 <td><%=rs1.getString(4) %></td>
								 	 <td><%=rs1.getString(5) %></td>
								 	 <td><%=rs1.getString(6) %></td>
								 	 
								     
								 
								     
								        
								  </tr>
									
								<%
								}	
								%>	
							<%
							} 
							catch(Exception e)
							{
								e.printStackTrace();
							}
							%>
							
							
							</table>
							
							
							</body>	
							
</html>