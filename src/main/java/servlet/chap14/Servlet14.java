package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet14
 */
@WebServlet("/Servlet14")
public class Servlet14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet14() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request 파라미터 수집
		// 2. request parameter 가공
		// 3. 실제 업무 (business logic)
		//		db에서 CustomerId가 3번인 고객의 CustomerName 조회
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerId = 3";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);

				// statement 생성
				Statement stmt = con.createStatement();
				
				// 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);
				
				){
				if (rs.next()) {
					String name = rs.getString(1);
					System.out.println(name);
				
					// 4. add attribute
					request.setAttribute("CustomerName", name);
				
				
				}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 5. forward/redirect
		
		String path ="/WEB-INF/view/chap14/view02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
