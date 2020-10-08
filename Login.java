package jdbc;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
try {
			
			//System.out.println("...............successfully Registered");
			String name = request.getParameter("name");
			//System.out.println(name);
			String password = request.getParameter("password");
			String dbName =null;
			String dbPassword =null;
			//System.out.println(password);
			String sql="select * from registration where name=? and password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/car1","root","root");
			System.out.println("Successfully Connected.");
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,password);
			//ps.executeUpdate();
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				dbName= rs.getString(2);
				dbPassword=rs.getString("password");
				
			}
			if(name.equals(dbName) && password.equals(dbPassword)) {
//				out.println("successfully Registered");
				System.out.println("successfully Loged in");
				
			}
			else {
			//PrintWriter out=response.getWriter();
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
}
		catch(ClassNotFoundException e){
			e.printStackTrace();
			//System.out.println("Not Connected.");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
}


