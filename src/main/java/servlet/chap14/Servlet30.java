package servlet.chap14;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet30() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String customerId = request.getParameter("id");

//		if(customerId==null || customerId.equals("")) {
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = response.getWriter();
//
//			out.println("<script language='javascript'>");
//			out.println("alert('원하는 고객 아이디를 입력하세요')");
//			out.println("</script>");
//
//			out.flush();
//			
//		}
//		else {
			int id = Integer.parseInt(customerId);
			String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, Country "
					+ "FROM Customers "
					+ "WHERE CustomerID = ?";
			
			ServletContext application = request.getServletContext();
			
			String url = application.getAttribute("jdbc.url").toString();
			String user = application.getAttribute("jdbc.user").toString();
			String pw = application.getAttribute("jdbc.password").toString();
			
			try (
					Connection con = DriverManager.getConnection(url, user, pw);
					PreparedStatement pstmt = con.prepareStatement(sql);) {
				
				pstmt.setInt(1, id);
				try (ResultSet rs = pstmt.executeQuery();) {
	
					if (rs.next()) {
						Customer c = new Customer();
						c.setId(rs.getInt("customerId"));
						c.setName(rs.getString("customerName"));
						c.setContactName(rs.getString("contactName"));
						c.setAddress(rs.getString("address"));
						c.setCity(rs.getString("city"));
						c.setCountry(rs.getString("country"));
						
						request.setAttribute("customer", c);
					}
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}			
			String path = "/WEB-INF/view/chap14/view13.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
			

//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String customerId = request.getParameter("id");

		int id = Integer.parseInt(customerId);

		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?, "
				+ "	   ContactName = ?, "
				+ "	   Address = ?, "
				+ "    City = ?, "
				+ "	   Country = ? "
				+ "WHERE CustomerId = ?";

		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, name);
			pstmt.setString(2, contactName);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, country);
			pstmt.setInt(6, id);

			int cnt = pstmt.executeUpdate();
			System.out.println(cnt);
			if (cnt == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("message", "고객 정보가 수정되었습니다");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 5. forward/ redirect
		response.sendRedirect(request.getContextPath() + "/Servlet23");

	}

}
