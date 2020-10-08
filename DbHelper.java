package jdbc;


import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class DbHelper
 */

public class DbHelper {
    Connection conn;
    
    public DbHelper() {
       try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/car1", "root", "root");
		System.out.println("Connection Success");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("connection failed");

	}
        // TODO Auto-generated constructor stub
    }
    public String signup(String name, String email, String password, String mobile) {
		// TODO Auto-generated method stub
    	try {
         String query="insert into registration1(name,email,password,mobile) values('"+name+"','"+email+"','"+password+"','"+mobile+"')";
         PreparedStatement ps = (PreparedStatement) conn.prepareStatement(query);
         ps.executeUpdate();
         return "success";
	}
    	catch(Exception e) {
    	e.printStackTrace();
    	return "error";
    	}
    	}
    public String login(String email,String password) {
    	try {
    	String query="select * from registration1 where email='"+email+"' and password='"+password+"'";
    	Statement statement;
		statement = (Statement) conn.createStatement();
		
    	ResultSet rs=statement.executeQuery(query);
    	if(rs.next()) {
    		return "success";
    	}
    	else {
    		return "error";
    	}		
    }
     catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return "error";
	}
    }
	public String getUserType(String email) {
		// TODO Auto-generated method stub
		
		try {
			String query="select * from registration1 where email='"+email+"'";
			Statement statement=(Statement) conn.createStatement();
			ResultSet rs=statement.executeQuery(query);
			if(rs.next()) {
				String useremail=rs.getString(6);
				return useremail;
			}
			else {
				return null;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return "error";
		}
	}  	

	
	

}
