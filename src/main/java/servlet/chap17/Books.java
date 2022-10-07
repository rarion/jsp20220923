package servlet.chap17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class books
 */
@WebServlet("/Books")
public class Books extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Books() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		/* Map<String, List<List<Book>>> map = new HashMap<>(); */
		
		List<List<Book>> bookList = new ArrayList<List<Book>>(); 
		List<Book> foreignBooks = List.of(new Book("카네기 처세술", 4000, "Dale Carnegie " ),new Book("카네기 인간관계론", 4000, "Dale Carnegie " ),
				new Book("소설 프로이트", 3900, "어빙 스톤") , new Book("인간조건", 3000, "Andre Malraux"));
		List<Book> domesticBook = List.of(new Book("너에게로 보내는 편지", 7000, "선우빈"), 
				new Book("내가 너라면 자살한다", 6000, "이준"), new Book("안개속에 지다", 3500, "김성종"),
				new Book("작고 가벼운 우울", 3000, "김우정"), new Book("젊은 놈의 처세론", 5500, "태전준부"),
				new Book("전혜린 에세이", 2000, "전혜린"), new Book("흐르는 강물처럼", 3500, "권영근"));
		/*
		 * bookList.add(domesticBook); bookList.add(foreignBooks);
		 */
		request.setAttribute("domesticBook", domesticBook);
		request.setAttribute("foreginBooks", foreignBooks);
		request.setAttribute("bookList", bookList);
		
		String path = "/WEB-INF/view/chap17/bookPage.jsp";
		
		request.setAttribute("path", path);
				
		request.getRequestDispatcher(path).forward(request, response);
		
		
				

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
