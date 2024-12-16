package required.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	HttpSession session = req.getSession();
    	String uid= session.getAttribute("userId").toString();
        // Retrieve parameters
    	
    	String uname = req.getParameter("uname");
    	
    	
    	String address = req.getParameter("address");
    	String city = req.getParameter("city");
    	
    	String mobile = req.getParameter("mobilenum");
    	
        
        
        
        

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerusers", "root", "Shub@14112002");

            // Update query
            PreparedStatement ps = con.prepareStatement("UPDATE users SET uname=?,  address=?, city=?, mobile=? WHERE id=?");
            ps.setString(1, uname);
          
           
            ps.setString(2, address);
            ps.setString(3, city);
           
            ps.setString(4, mobile);
            
            ps.setString(5, uid);
           

            int rowsUpdated = ps.executeUpdate();
            // Query to fetch user details
           // String query = "SELECT * FROM users WHERE id = ?";
            PreparedStatement ps1 = con.prepareStatement("SELECT * FROM users WHERE id = ?");
            ps1.setString(1, uid);
            

            ResultSet rs = ps1.executeQuery();
            
            if (rowsUpdated > 0 && rs.next()) {
            	
            	 // Setting user details in request attributes
                req.setAttribute("id", rs.getInt("id"));
                req.setAttribute("uname", rs.getString("uname"));
                req.setAttribute("uemail", rs.getString("uemail"));
                req.setAttribute("gender", rs.getString("gender"));
                req.setAttribute("address", rs.getString("address"));
                req.setAttribute("city", rs.getString("city"));
                req.setAttribute("joinDate", rs.getDate("joinDate").toString());
                req.setAttribute("mobile", rs.getString("mobile"));
               
               
            } else {
                req.setAttribute("errorMessage", "Update failed. Please try again.");
                req.getRequestDispatcher("editProfile.jsp").forward(req, res);
            }
            // Close resources
            rs.close();
            ps.close();
            ps1.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "An error occurred while updating your profile.");
            req.getRequestDispatcher("editProfile.jsp").forward(req, res);
        }
     // Forward to JSP
        RequestDispatcher rd = req.getRequestDispatcher("profile.jsp");
        rd.forward(req, res);
       
    }
}
