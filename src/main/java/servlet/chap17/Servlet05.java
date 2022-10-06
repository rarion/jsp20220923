package servlet.chap17;

import java.io.IOException;
//import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class Servlet05
 */
@WebServlet("/Servlet05")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * Book book1 = new Book(); book1.setTitle("카네기 처세술"); book1.setPrice(4000);
		 * Book book2 = new Book(); book2.setTitle("인간조건"); book2.setPrice(3000); Book
		 * book3 = new Book(); book3.setTitle("전혜린 에세이"); book3.setPrice(2000); Book
		 * book4 = new Book(); book4.setTitle("너에게로 보내는 편지"); book4.setPrice(7000);
		 * List<Book> bookList = new ArrayList<>(); bookList.add(book1);
		 * bookList.add(book2); bookList.add(book3); bookList.add(book4);
		 */
		List bookList= List.of(new Book("카네기 처세술",4000), new Book("전혜린에세이",2000), new Book("인간조건",3000), new Book("너에게로 보내는 편지",7000));
		
		request.setAttribute("bookList", bookList);
		
		String jspPath = "/WEB-INF/view/chap17/view04.jsp";
		request.getRequestDispatcher(jspPath).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
