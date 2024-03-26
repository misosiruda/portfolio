package com.miso.controller.action;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.miso.daodto.MisoDAO;
import com.miso.daodto.BoardVO;

public class BoardListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/board/boardList.jsp";
		MisoDAO mDao = MisoDAO.getInstance();
		int maxPage = mDao.getMaxPage();
		request.setAttribute("maxpage", maxPage);
		String s = request.getParameter("page");
		int pageNum = Integer.parseInt(s != null ? s : "1");
		if (pageNum == 1) {
			request.setAttribute("page", 1);
		}
		List<BoardVO> boardList = mDao.selectAllBoards(pageNum);
		request.setAttribute("boardList", boardList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}