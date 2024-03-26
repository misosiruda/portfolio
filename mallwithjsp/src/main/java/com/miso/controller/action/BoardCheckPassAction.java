package com.miso.controller.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.miso.daodto.MisoDAO;
import com.miso.daodto.BoardVO;

public class BoardCheckPassAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		MisoDAO mDao = MisoDAO.getInstance();
		BoardVO bVo = mDao.selectOneBoardByNum(num);
		if (bVo.getPass().equals(pass)) { // 성공
			url = "/board/checkSuccess.jsp";
		} else if (mDao.adminCheck(pass)) {
			url = "/board/checkSuccess.jsp";
		} else {// 실패
			url = "/board/boardCheckPass.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}