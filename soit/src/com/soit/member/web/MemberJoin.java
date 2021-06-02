package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soit.common.DBCommand;
import com.soit.member.service.MemberService;
import com.soit.member.serviceImpl.MemberServiceImpl;
import com.soit.member.vo.MemberVO;

public class MemberJoin implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// DB에 저장...

		HttpSession session = request.getSession();
		String id = request.getParameter("Id");
		String name = request.getParameter("Name");
		String pwd = request.getParameter("Password");
		String phone = request.getParameter("Phone_number");
		String addr = request.getParameter("Address");

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPassword(pwd);
		vo.setPhone_number(phone);
		vo.setAddress(addr);

		MemberService service = new MemberServiceImpl();
		service.insertMember(vo);

		session.setAttribute("id", id);
		session.setAttribute("member", vo);

		return "main/main.tiles";
	}

}
