package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soit.common.DBCommand;
import com.soit.member.service.MemberService;
import com.soit.member.serviceImpl.MemberServiceImpl;
import com.soit.member.vo.MemberVO;

public class MemberMyPage implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO vo = new MemberVO();
		vo.setId(id);
		
		MemberService service = new MemberServiceImpl();
		service.selectMember(vo);
		
		request.setAttribute("member", vo);
		return "member/memberMyPage.tiles";
	}

}
