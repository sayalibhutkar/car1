package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.project.servlet.Exception;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		try {
			
			System.out.println("...............successfully Registered");
			String name = request.getParameter("name");
			System.out.println(name);
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			System.out.println(password);
		    String mobile = request.getParameter("mobile");
			String sql="insert into registration(name,email,password,mobile) values(?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/car1","root","root");
			System.out.println("Successfully Connected.");
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,password);
			ps.setString(4,mobile);
			ps.executeUpdate();
			PrintWriter out=response.getWriter();
			out.println("successfully Registered");
			
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
			//System.out.println("Not Connected.");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	

}
