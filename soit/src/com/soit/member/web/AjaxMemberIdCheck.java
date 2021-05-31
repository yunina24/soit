package com.soit.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.member.serviceImpl.MemberServiceImpl;

@WebServlet("/ajaxMemberIdCheck")
public class AjaxMemberIdCheck extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		MemberServiceImpl service = new MemberServiceImpl();
		int cnt = 0; //존재하지 안흐면 0이 return
		if(service.idCheck(id)) {
			cnt = 1; //존재하면 1
		}
		resp.getWriter().print(cnt);
	}
}
