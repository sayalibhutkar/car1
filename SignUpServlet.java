package jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/signup")

public class SignUpServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	String mobile=req.getParameter("mobile");
	//String usertype=req.getParameter("userType");
	DbHelper db=new DbHelper();
	String result=db.signup(name,email,password,mobile);
	if(result.equalsIgnoreCase("success")) {
		
		resp.sendRedirect("signup.jsp?result=success");
	}
	else {
		
		resp.sendRedirect("signup.jsp?result=error");
	}
	
	
	}
	
	

}



