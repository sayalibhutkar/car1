<%
	if(session.getAttribute("loginUser")!=null){
		response.sendRedirect("profile.jsp");
	}
%>
<%@include
	file = "header.jsp"
 %>
 
 <body background="images/purple.jpg">
 
 
 <div class="container" style="margin-top: 20px;">
 
 
	<div class="col-md-4">
		<%
			if(request.getParameter("result")!=null){
				String result = request.getParameter("result").toString();
				if(result.equalsIgnoreCase("Success")){
		%>
				<div class="alert alert-success">Successfully SignUp</div>
		<%
				}
				else
				{
		%>
				<div class="alert alert-danger">Don't re-enter the same values for email and Mobile !!</div>
		<%
					
				}
			}
		%>
		</div>
		</div>
 
 <div class="col-md-4">
 <div class="card">
						<div class="card-header bg-primary text-light" >
							<h3>SignUp</h3>
						</div>
						<div class="card-body">
							<form action = "signup" method = "post">
								<div class="form-group">	
									<label>Name</label>
									<input type="text" class="form-control" placeholder="Name" name = "name" required></input><span style="color:red;">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" placeholder="Email" name = "email" required></input>
								</div>
								<div class="form-group">
									<label>Password</label>
									<input type="password" class="form-control" placeholder="Password" name="password" required></input>
								</div>
								
								<div class="form-group">
									<label>Mobile Number</label>
									<input type="text" class="form-control" placeholder="Mobile" name = "mobile"></input>
								</div>
								
								
								<div class="form-group">
							<label>UserType</label>
									<input type="text" class="form-control" placeholder="Customer" name = "usertype" value="Customer" readonly="readonly" required></input>
								</div>
								
							
								<div class="form-group" class="col-md-4">
									<button type="submit" class="btn btn-primary">SignUp</button><span>  </span>
								
									<button type="reset" class="btn btn-primary">Cancel</button>
								</div>
							</form>
						</div>
						<div class="card-footer">
							Thanks for registering with us !!
						</div>
					</div>
					</div>
					
					</body>
 <%@include
	file = "footer.jsp"
 %>