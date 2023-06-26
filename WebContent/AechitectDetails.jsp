<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import = "com.erp.services.*"%>
<%@ page import = "java.sql.*"%> 



<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<!-- team.html  29 Nov 2019 03:34:14 GMT -->
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
<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<div class="site-preloader-wrap">
<div class="spinner"></div>
</div>
<header class="header">
<div class="primary-header">
<div class="container">
<div class="primary-header-inner">
<div class="header-logo">
<a href="#"><img src="img/logo-dark.png" alt="Indico"></a>
</div>
<div class="header-menu-wrap">
<ul class="dl-menu">
<li><a href="index.html">Home</a>


</li>
<li><a href="#">About</a>
<ul>

<li><a href="about-us.html">About Us</a></li>
<li><a href="about-company.html">About Company</a></li>
</ul>
</li>





</div>
</div>
</div>



</header>
<section class="team-section bg-gray padding">

<section class="vh-100">
  <div class="container h-100">
  
  
  	  
<form  action = "Add_deparment_task" method = "post">
  
  
		
  
         <div class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-xl-9">


			
			<label>Select Department  </label>
			
				

			  <select name="responsible_dep">
			    <option value="0">Select_menu:</option>
			    <%
			    
			   	try
			   	{
			   		String Query="select * from dep_accounts";
			   		Connection con = showDB.getCon();
					//PreparedStatement ps = con.prepareStatement("select * from dep_accounts");

			   		Statement stm=con.createStatement();
					ResultSet rs =stm.executeQuery(Query);	
					
					while(rs.next())
					{
						
						%>
						
						
						<option value="<%=rs.getInt("dep_id")%>"><%=rs.getString("dep_name")%></option>
						
						
						
						
						
						<%
						
						
						
						

					}
					

					
					
					
			    		
			   	}
			   	catch(Exception e)
			    {
			   		e.printStackTrace();
			   		out.println("Error"+e.getMessage());
			   		
			    }
			    
			    
			    
			    
			    %>
			    
			 </select>			


            <div class="form-group"> 
			<label for="exampleInputEmail1">Email</label> 
			<input type="text" name="empAssig" class="form-control"  placeholder="Enter Employee Email" required> 
			</div>
            
            
            <div class="form-group">
			<label for="exampleInputEmail1">Employee name</label> 
			<input type="text" name="EmpPrio" class="form-control"  placeholder="Enter Employee Pasword" required> 

			 <div class="form-group">
			<label for="exampleInputEmail1">Contact</label> 
			<input type="text" name="EmpPrio" class="form-control"  placeholder="Enter Employee Conatact" required> 

			
             <div class="form-group">
			<label for="exampleInputEmail1">Department</label> 
			<input type="text" name="EmpPrio" class="form-control"  placeholder="Enter Employee Conatact" required> 

			              	
           			
           			


			 
			
            <div class="px-5 py-4">
            
              <button type="submit" class="btn btn-primary btn-lg">Submit</button>
               </form>
            </div>


          </div>
        </div>

      </div>
    </div>
  </div>
</section>





</section>





<footer class="footer-section align-center">
<div class="container">
<p><a href="templateshub.net">Templates Hub</a></p>
</div>
</footer>
<a data-scroll href="#header" id="scroll-to-top"><i class="arrow_carrot-up"></i></a>

<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/vendor/jquery-1.12.4.min.js"></script>

<script src="js/vendor/bootstrap.min.js"></script>

<script src="js/vendor/tether.min.js"></script>

<script src="js/vendor/headroom.min.js"></script>

<script src="js/vendor/owl.carousel.min.js"></script>

<script src="js/vendor/smooth-scroll.min.js"></script>

<script src="js/vendor/venobox.min.js"></script>

<script src="js/vendor/jquery.ajaxchimp.min.js"></script>

<script src="js/vendor/slick.min.js"></script>

<script src="js/vendor/waypoints.min.js"></script>

<script src="js/vendor/odometer.min.js"></script>

<script src="js/vendor/wow.min.js"></script>

<script src="js/main.js"></script>
</body>

<!-- team.html  29 Nov 2019 03:34:14 GMT -->
</html>