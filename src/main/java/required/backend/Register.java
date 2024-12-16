package required.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/regForm")
public class Register extends HttpServlet {
         protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
        	 
        	 PrintWriter out=res.getWriter();
        	 
     		String myName=req.getParameter("name");
     		String myEmail=req.getParameter("email");
     		String myPassword=req.getParameter("password");
     		String myGender=req.getParameter("gender");
     		String myAddress=req.getParameter("address");
     		String myCity=req.getParameter("city");
     		String dateOfJoin=req.getParameter("doj");
     		String Mobile=req.getParameter("mobilenum");
     		
     		try {
     			Class.forName("com.mysql.cj.jdbc.Driver");
     			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/registerusers","root","Shub@14112002");
//     			PreparedStatement ps= con.prepareStatement("insert into users value(?,?,?,?,?,?,?,?)");
     			PreparedStatement ps = con.prepareStatement("INSERT INTO users (uname, uemail, upwd, gender, address, city, joinDate, mobile) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

     			ps.setString(1,myName);
     			ps.setString(2,myEmail);
     			ps.setString(3,myPassword);
     			ps.setString(4,myGender);
     			ps.setString(5,myAddress);
     			ps.setString(6,myCity);
     			ps.setString(7,dateOfJoin);
     			ps.setString(8,Mobile);
     			
     			int count=ps.executeUpdate();
     			if(count>0) {
     				res.setContentType("text/html");
     				out.print("<h3 style='color:green'>User Registered Successfully</h3>");
     				RequestDispatcher rd= req.getRequestDispatcher("/index.html");
     				rd.include(req,res);
     				 
     			}
     			
     		}
     		catch(Exception e){
     			e.printStackTrace();
     			res.setContentType("text/html");
 				out.print("<h3 style='color:red'>Exception Occured"+e.getMessage()+"</h3>");
 				RequestDispatcher rd= req.getRequestDispatcher("/register.jsp");
 				rd.include(req,res);
     		}
     	}
}
