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
								<table class="table">
								  <thead class="thead-dark">
						 		
								  <tr>
								  
									<th>Sr.no</th>
								    <th>Project Name:</th>
								    <th>Address :</th>  
									<th>Delete :</th> 
									<th>Add Plan Image :</th>
							
								    
								  </tr>
								
							<%
							try{
							 	
								Connection con = showDB.getCon();
								PreparedStatement ps = con.prepareStatement("select * from projet_accounts");
								ResultSet rs =ps.executeQuery();
								while(rs.next())
								{%>
								  <tr>
								    <td><%=rs.getString(1)%></td>
								 	<td><%=rs.getString(2) %></td>
								     <td><%=rs.getString(3) %></td>
								 
   
								     <td><a href="delete_proj.jsp?project_id=<%=rs.getInt(1) %>">Delete</a></td>
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