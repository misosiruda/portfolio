package com.miso.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.miso.daodto.MisoDAO;

public class LoginCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MisoDAO mDao = MisoDAO.getInstance();
		String userid = request.getParameter("userid");
		String userpass = request.getParameter("userpass");
		String isLogined = mDao.loginCheck(userpass, userid);
		String url = null;
		if (isLogined.equals("success")) {
			url = "/index.jsp";
			request.setAttribute("logined", "1");
		} else {
			url = "/login/loginform.jsp";
			request.setAttribute("check", isLogined);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
