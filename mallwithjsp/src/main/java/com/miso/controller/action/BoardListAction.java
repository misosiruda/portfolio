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
		int pageMax = mDao.getMaxPage();
		request.setAttribute("maxpage", pageMax);
		String s = request.getParameter("page");
		int pageNum = Integer.parseInt(s != null ? s : "1");
		request.setAttribute("page", pageNum);
		int pageStart = (int) (Math.floor((pageNum - 0.1) / 10)) * 10 + 1;
		int pageEnd = (int) (Math.floor((pageNum - 0.1) / 10)) + 10;
		if (pageMax <= pageEnd) {
			pageEnd = pageMax;
		}
		request.setAttribute("pagestart", pageStart);
		request.setAttribute("pageend", pageEnd);
		List<BoardVO> boardList = mDao.selectAllBoards(pageNum);
		request.setAttribute("boardList", boardList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}