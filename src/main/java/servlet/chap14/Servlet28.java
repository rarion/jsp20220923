package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet28
 */
@WebServlet("/Servlet28")
public class Servlet28 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet28() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// forward 
		String path = "WEB-INF/view/chap14/view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String CustomerName = request.getParameter("name");
		String Address = request.getParameter("address");
		String City = request.getParameter("city");
		String Country = request.getParameter("country");
		
		String sql = "INSERT INTO Customers (CustomerName, Address, City, Country)"
				+ "VALUES (?, ?, ?, ?)";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, CustomerName);
			pstmt.setString(2, Address);
			pstmt.setString(3, City);
			pstmt.setString(4, Country);
			
			int cnt = pstmt.executeUpdate();
			
			if(cnt==1) {
				String path = request.getContextPath() + "/Servlet23";
				response.sendRedirect(path);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
