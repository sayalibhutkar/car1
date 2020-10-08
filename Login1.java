package jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class Login1 extends HttpServlet{

	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password=req.getParameter("password");
		DbHelper db = new DbHelper();
		String result = db.login(email, password);

		if(result.equalsIgnoreCase("Success")) {
			String userType = db.getUserType(email);
			System.out.println(userType);
			if(userType!=null) {
				HttpSession session = req.getSession();
				session.setAttribute("loginUser",email);
				session.setAttribute("loginType",userType);
				resp.sendRedirect("profile.jsp");
			}
		}
		else {
			resp.sendRedirect("login.jsp?result=error");
		}
	//
	}
}

	
	





