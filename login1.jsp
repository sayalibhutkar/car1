<%
if(session.getAttribute("loginUser")!=null){
	response.sendRedirect("profile.jsp");
	
}
%>



<%@include
file="header.jsp"
 %>
 
 <body background="images/purple.jpg">
 
 <div class="container" style="margin-top:20px">
 <div class="row">
 <div class="col-md-4"></div>
 <div class="col-md-4">
<% if(request.getParameter("result")!=null){
	%>
 <div class="alert alert-danger">Enter correct email and password</div>
 <%
 }
%>
 
 <div class="card">
 <div class="card-header bg-primary text-light" >
 <div class="card-title">
 <h2>Login</h2>
 </div>
 </div>
 
 
 <div class="card-body">
 <form action="login" method="post">
 <div class="form-group">
 <label>Email</label>
 <input type="email" class="form-control" placeholder="Email" name="email" required>
  </div>
  
  <div class="form-group">
  <label>password</label>
  <input type="password" class="form-control" placeholder="Password" name="password" required>
  </div>
  
  <div class="form-group">
  <button type="submit" class="btn btn-primary">Login</button>
  </div>
 </form> 
 </div>
 <div class="card-footer">
 New Users SignUp<a href="signup.jsp">here</a>
 </div>
 
 
 </div>
 
 </div>
 
 
 </div>
 
 
 </div>
 </body>
 
 <%@ include 
	file="footer.jsp"
%>