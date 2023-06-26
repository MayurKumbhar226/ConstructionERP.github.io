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
<title>MK Constructions</title>
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
<li><a href="#">Services</a>
<ul>
<li><a href="services-1.html">Services 01</a></li>
<li><a href="services-2.html">Services 02</a></li>
</ul>
</li>
<li><a href="#">Pages</a>
<ul>
<li><a href="projects.html">Our Projects</a></li>
 <li><a href="project-single.html">Project Single</a></li>
<li><a href="team.html">Our Team</a></li>
<li><a href="testimonial.html">Testimonial</a></li>
<li><a href="404.html">404 Error</a></li>
</ul>
</li>
<li><a href="#">Blog</a>
<ul>
<li><a href="blog-grid.html">Blog Grid</a></li>
<li><a href="blog-classic.html">Blog Classic</a></li>
<li><a href="blog-single.html">Blog Single</a></li>
</ul>
</li>
<li><a href="contact.html">Contact</a></li>
</ul>
</div>


</div>
</div>
</div>



</header>
<section class="team-section bg-gray padding">

<section class="vh-100">
  <div class="container h-100">
  
  
  	  
		<form  action = "Project_view_Add" method = "post">
  
  
  		<%

		int pid = Integer.parseInt(request.getParameter(("project_id")));

		%>
		
  
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-9">

		    <div class="form-group"> 
			<label for="exampleInputEmail1">Your Project ID</label> 
			<input type="number" name="project_id" class="form-control" placeholder="Project id" value=<%=pid%> required> 
			</div>
			
			 <div class="form-group"> 
			<label for="exampleInputEmail1">Department Task Title</label> 
			<input type="text" name="dTitle" class="form-control"  placeholder="Enter Department Task Assigner" required> 
			</div>
            
            <div class="form-group"> 
			<label for="exampleInputEmail1">Department Task Assigner</label> 
			<input type="text" name="dAssig" class="form-control"  placeholder="Enter Department Task Assigner" required> 
			</div>
            
            
            <div class="form-group">
			<label for="exampleInputEmail1">Department Task Priority</label> 
			<input type="text" name="dPrio" class="form-control"  placeholder="Enter Department Task Priority" required> 

			<div>
			
			
			<label for="start">Start Date:</label>

			<input type="date" id="start" name="ddate_start"
       		value="2018-07-22"
       		min="2018-01-01" max="2018-12-31">
			
			
          	<label for="start">End date:</label>

			<input type="date" id="start" name="ddate_end"
       		value="2018-07-22"
       		min="2018-01-01" max="2018-12-31">
			 </div>
          
                          	
           			
			<div class="custom-select" style="width:200px;">
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
			<label for="exampleInputEmail1">Department Task Location</label> 
			<input type="text" name="d_task_location" class="form-control"  placeholder="Enter Department task Location" required>  
			  
			
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