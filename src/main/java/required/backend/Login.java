package required.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.print.attribute.standard.MediaSize.ISO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email1");
        String password = request.getParameter("pass1");
       
        System.out.println(email+"  "+password);

        PrintWriter out = response.getWriter();

        try {
        	
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish database connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerusers", "root", "Shub@14112002");
            
            System.out.println("connection est.");
            // Check credentials
           // String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?");
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
           
           // System.out.println(rs.next());
         //   System.out.println(rs.getString("uname"));
            
            
            if (rs.next()==true) {
            	 // Redirect to welcome page
                RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
                rd.forward(request, response);
            	
            	HttpSession session = request.getSession();
            	session.setAttribute("session_name", rs.getString("uname"));
            	session.setAttribute("userEmail", email);
            	session.setAttribute("userPassword", password);
            	session.setAttribute("userGender", rs.getString("gender"));
            	session.setAttribute("userAdd", rs.getString("address"));
            	session.setAttribute("userCity", rs.getString("city"));
            	session.setAttribute("userJoinDate", rs.getString("joinDate"));
            	session.setAttribute("userMobile", rs.getString("mobile"));
            	session.setAttribute("userId", rs.getString("id"));
          	
               
            }
            
            else {
                response.setContentType("text/html");
                out.print("<h3 style='color:red'>email id or password not match</h3>");
                RequestDispatcher rd = request.getRequestDispatcher("/index.html");
                
                rd.include(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            out.print("<h3 style='color:red;'>Error Occurred: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/index.html");
            
            rd.include(request, response);
        }
    }
}
