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
import javax.servlet.http.HttpSession;

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
		String ContactName = request.getParameter("contactName");
		
		String sql = "INSERT INTO Customers (CustomerName,ContactName, Address, City, Country)"
				+ "VALUES (?, ?, ?, ?, ?)";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, CustomerName);
			pstmt.setString(2, ContactName);
			pstmt.setString(3, Address);
			pstmt.setString(4, City);
			pstmt.setString(5, Country);
			
			int cnt = pstmt.executeUpdate();
			
			if(cnt==1) {
				
				HttpSession session = request.getSession();
				session.setAttribute("message", "새 고객이 등록되었습니다.");
				
				String path = request.getContextPath() + "/Servlet23"; // f3 단축키 (이동)
				response.sendRedirect(path);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
