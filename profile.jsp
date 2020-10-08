<%
if(session.getAttribute("loginUser")==null){
	response.sendRedirect("login.jsp");
	
}
%>



<%@include
file="header.jsp"
 %>
 
 <%
 if(session.getAttribute("loginUser")!=null){
	 %>
	 <h2>Welcome:<%=session.getAttribute("loginType").toString()%></h2>
	 
<h2>Login Successful:<%=session.getAttribute("loginUser").toString()%></h2>
<% }%>	
<div class="container">
 <div class="row">
 <div class="col-md-4">
 <img src="images/profile.jpg" class="img-fluid rounded" >
 </div>
 </div>
 </div> 
 
 
 
 <%@include
file="footer.jsp"
 %>