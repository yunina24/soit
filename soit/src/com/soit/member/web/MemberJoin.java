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
		String id = request.getParameter("memberId");
		String name = request.getParameter("memberName");
		String pwd = request.getParameter("memberPwd");
		String phone = request.getParameter("memberPhone");
		String addr = request.getParameter("memberAddr");

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

		
		
		String path = "";
		if(vo == null) { 
			// 회원 정보 존재하지 않음...(memberLoninFail.jsp)
			path = "member/memberLoninFail.tiles";
		} else {
			//회원일 경우...로그인 처리(memberLoninSuccess.jsp)
			session.setAttribute("id", vo.getId()); //연결이 끊어질때까지 해당 정보값 가지고 있도록...
			request.setAttribute("vo", vo);
			path = "member/memberJoinSuccess.tiles";
		}
		return path;
	}

}
