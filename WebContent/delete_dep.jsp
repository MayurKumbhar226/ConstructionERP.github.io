<%@ page import = "com.erp.services.*"%>
<%@ page import = "java.sql.*"%> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			
			<%
			int a= Integer.parseInt(request.getParameter("dep_id"));
			Connection con = showDB.getCon();
			PreparedStatement ps = con.prepareStatement("delete from dep_accounts where dep_id = ?");
			ps.setInt(1,a);
			int i = ps.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("view_Employees.jsp");
			}
			
			%>
			

</body>
</html>