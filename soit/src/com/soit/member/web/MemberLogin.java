package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soit.common.DBCommand;
import com.soit.member.serviceImpl.MemberServiceImpl;
import com.soit.member.vo.MemberVO;

public class MemberLogin implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//아이디, 비밀번호 확인 결과를 return...
				//정상적인 회원이면 이름을 화면에 출력...
				HttpSession session  = request.getSession();
				
				String id = request.getParameter("memberId");
				String pwd = request.getParameter("memberPwd");
				
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPassword(pwd);
				
				MemberServiceImpl service = new MemberServiceImpl();
				MemberVO rvo = service.loginCheck(vo);
				String path = "";
				if(rvo == null) { 
					// 회원 정보 존재하지 않음...(memberLoninFail.jsp)
					path = "member/memberLoninFail.tiles";
				} else {
					//회원일 경우...로그인 처리(memberLoninSuccess.jsp)
					session.setAttribute("id", rvo.getId()); //연결이 끊어질때까지 해당 정보값 가지고 있도록...
					request.setAttribute("vo", rvo);
					
					path = "member/memberLoninSuccess.tiles";
				}
				return path;
	}

}
