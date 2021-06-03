package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.member.service.MemberService;
import com.soit.member.serviceImpl.MemberServiceImpl;
import com.soit.member.vo.MemberVO;

public class MemberUpdate implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String pNum = request.getParameter("phone_num");
		String addr = request.getParameter("address");
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPassword(password);
		vo.setPhone_number(pNum);
		vo.setAddress(addr);
		
		MemberService service = new MemberServiceImpl();
		int r = service.updateMember(vo);
		String path="";
		
		if(r!=0) {
			path = "member/memberUpdateSucc.tiles";
		} else {
			path = "member/memberUpdateFail.tiles";
		}
		
		return path;
	}

}
