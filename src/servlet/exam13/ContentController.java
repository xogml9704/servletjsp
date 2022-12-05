package servlet.exam13;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;

@WebServlet(name="exam13.ContentController", urlPatterns="/exam13/ContentController")
public class ContentController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// PageNo 얻기
		String strPageNo = request.getParameter("pageNo");
		if(strPageNo == null) {
			strPageNo = "1";
		}
		int PageNo = Integer.parseInt(strPageNo);
		
		// BoardService 객체 얻기
		ServletContext application = request.getServletContext();
		BoardService boardService = (BoardService) application.getAttribute("boardService");
		
		// 페이징 대상이되는 전체 행수 얻기
		int totalBoardNum = boardService.getTotalBoardRows();
		System.out.println("totalBoardNum : " + totalBoardNum);
		
		request.getRequestDispatcher("/WEB-INF/views/exam13/content.jsp").forward(request, response);
	}
	
}
