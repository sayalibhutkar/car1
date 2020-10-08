# car1
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
</head>



<body>


	<nav class="navbar navbar-expand-lg navbar-dark text-dark" style="background-color:grey">
  		<div class="container col-md-8">
  			<a class="navbar-brand" href="index.jsp">CarWash</a>
  			<img src ="images/carlogo2.jpg" alt="CarWash" height="100" width="100">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="index.jsp" style="color:#fff">Home</a>
      </li>
      
          
      <li class="nav-item">
        <a class="nav-link" href="login1.jsp" style="color:#fff">Login</a>
      </li>
      
      
     
      
          
      <li class="nav-item">
        <a class="nav-link" href="signup.jsp" style="color:#fff">SignUp</a>
      </li>
      
       
		
      
      
      
      
      
      
    
      
    <% if(session.getAttribute("loginType")!=null){
    	String userType=session.getAttribute("loginType").toString();
    	if(userType.equalsIgnoreCase("Customer")){
    	%>
    	<%@include file="navaftercustomerlogin.jsp" %>
    	<% 
    	}
    	else if(userType.equalsIgnoreCase("Admin")){
    		%>
    		
    	<%@include file="navafteradminlogin.jsp" %>
    	<% 
    	}
    	
    	
    	else
    	{
		%>
		
    	<%@include file="navbeforelogin.jsp" %>
    	<% 
    	}
    }else{
    	
    	%>    
    	
    	<%@include file="navbeforelogin.jsp" %>	
    	<% 	
    	}
    	%>
    	
    	
   
			     
			   
			      </ul>
   
  </div>
  		</div>
	</nav>
		

