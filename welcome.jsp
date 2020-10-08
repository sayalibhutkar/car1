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
				<div class="alert alert-success">Successfully Register</div>
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
							<h3>REGISTER</h3>
						</div>
						<div class="card-body">
							<form action = "Register" method = "post">
							
							<div class="form-group">
 										<label>Package</label>
 							<select name="subject" class="form-control">
										 <option>RS.699/-</option>
												 <option>RS.999/-</option>
 												<option>RS.1099/-</option>
 												<option>RS.499/-</option>
 												<option>RS.599/-</option>
 												<option>RS.299/-</option>
 												
											 </select>
 											</div>
								<div class="form-group">	
									<label>Name</label>
									<input type="text" class="form-control" placeholder="Name" name = "name" required></input><span style="color:red;">
								</div>
								
								
								<div class="form-group">
									<label>Address</label>
									<textarea rows="3" name="address" required></textarea>
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" placeholder="Email" name = "email" required></input>
								</div>
								
								
								<div class="form-group">
									<label>Mobile Number</label>
									<input type="text" class="form-control" placeholder="Mobile" name = "mobile"></input>
								</div>
								
								
								<div class="form-group">
							<label>Book Slot</label>
									<input type="text" class="form-control" placeholder="Book Slot" name = "book"  required></input>
								</div>
								
									
								<div class="form-group">
 										<label>Time</label>
 							<select name="subject" class="form-control">
										 <option>5am to 6am</option>
												 <option>6am to 7am</option>
 												<option>7am to 8am</option>
 												<option>8am to 9am</option>
 												<option>9am to 10am</option>
 												
 												
											 </select>
 											</div>
								<div class="form-group" class="col-md-4">
									<button type="submit" class="btn btn-primary">Submit</button><span>  </span>
								
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