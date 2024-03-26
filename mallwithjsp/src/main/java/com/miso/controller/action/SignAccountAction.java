package com.miso.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.miso.daodto.MisoDAO;
import com.miso.daodto.LoginVO;

public class SignAccountAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MisoDAO mDao = MisoDAO.getInstance();
		LoginVO lVo = new LoginVO();
		lVo.setUserid(request.getParameter("userid"));
		lVo.setUserpass(request.getParameter("userpass"));
		mDao.signAccount(lVo);
		String url = "./login/loginform.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
