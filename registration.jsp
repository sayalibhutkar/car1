<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-md-4">
 <div class="card">
						<div class="card-header bg-primary text-light" >
							<h3>SignUp</h3>
						</div>
						<div class="card-body">
							<form action = "Registration" method = "post">
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
					
					</html>