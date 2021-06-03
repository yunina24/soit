package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soit.common.DBCommand;
import com.soit.member.service.MemberService;
import com.soit.member.serviceImpl.MemberServiceImpl;
import com.soit.member.vo.MemberVO;

public class MemberDelete implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = request.getParameter("did");
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		MemberService service = new MemberServiceImpl();
		
		int r = service.deleteMember(vo);
		String path = "";
		
		if(r>0) {
			path = "main.do";
			session.invalidate();
		}else {
			path = "main.do";
		}
		
		return path;
	}

}
