package com.soit.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.member.web.MemberJoin;
import com.soit.member.web.MemberJoinForm;
import com.soit.member.web.MemberLogin;
import com.soit.member.web.MemberLoginForm;
import com.soit.member.web.MemberLoginOut;
import com.soit.notice.web.NoticeForm;
import com.soit.notice.web.NoticeInsert;
import com.soit.notice.web.NoticeList;
import com.soit.notice.web.NoticeListPaging;
import com.soit.notice.web.NoticeSelect;

public class FrontController extends HttpServlet {
	private HashMap<String, DBCommand> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		// 요청페이지, 실행 컨트롤...
		//map.put("/index.do", new IndexPage());
		map.put("/main.do", new MainPage());

		// 맴버...
		map.put("/memberJoinForm.do", new MemberJoinForm());
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberLoginOut.do", new MemberLoginOut());
		
		// 게시판
		map.put("/noticeList.do", new NoticeList());
		map.put("/noticeListPaging.do", new NoticeListPaging());
		map.put("/noticeForm.do", new NoticeForm());
		map.put("/noticeInsert.do", new NoticeInsert());
		map.put("/noticeSelect.do", new NoticeSelect());
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String uri = req.getRequestURI();
		String cpath = req.getContextPath();
		String path = uri.substring(cpath.length());

		DBCommand command = map.get(path);
		String viewPage = command.execute(req, resp);

		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
}
