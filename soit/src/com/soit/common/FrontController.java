package com.soit.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.guide.GuideAboutUs;
import com.soit.guide.GuideAgreement;
import com.soit.guide.GuidePrivacyPolicy;
import com.soit.member.web.MemberDelete;
import com.soit.member.web.MemberJoin;
import com.soit.member.web.MemberJoinForm;
import com.soit.member.web.MemberLogin;
import com.soit.member.web.MemberLoginForm;
import com.soit.member.web.MemberLoginOut;
import com.soit.member.web.MemberMyPage;
import com.soit.member.web.MemberUpdate;
import com.soit.notice.web.NoticeDelete;
import com.soit.notice.web.NoticeForm;
import com.soit.notice.web.NoticeInsert;
import com.soit.notice.web.NoticeList;
import com.soit.notice.web.NoticeListPaging;
import com.soit.notice.web.NoticeSelect;
import com.soit.notice.web.NoticeUpdate;
import com.soit.product.ProductAll;
import com.soit.product.ProductEarring;
import com.soit.product.ProductNecklace;
import com.soit.product.ProductRing;

public class FrontController extends HttpServlet {
	private HashMap<String, DBCommand> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		// 요청페이지, 실행 컨트롤...
		map.put("/main.do", new MainPage());

		// 맴버...
		map.put("/memberJoinForm.do", new MemberJoinForm());
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberLoginOut.do", new MemberLoginOut());
		map.put("/memberMyPage.do", new MemberMyPage());
		map.put("/memberUpdate.do", new MemberUpdate());
		map.put("/memberDelete.do", new MemberDelete());
		
		// 공지사항
		map.put("/noticeList.do", new NoticeList());
		map.put("/noticeListPaging.do", new NoticeListPaging());
		map.put("/noticeForm.do", new NoticeForm()); // 글쓰기
		map.put("/noticeSelect.do", new NoticeSelect()); // 글보기
		map.put("/noticeInsert.do", new NoticeInsert()); // 등록
		map.put("/noticeUpdate.do", new NoticeUpdate()); // 수정
		map.put("/noticeDelete.do", new NoticeDelete()); // 삭제
		
		// guide
		map.put("/guideAboutUs.do", new GuideAboutUs());
		map.put("/guidePrivacyPolicy.do", new GuidePrivacyPolicy());
		map.put("/guideAgreement.do", new GuideAgreement());
		
		// product (상품페이지)
		map.put("/productAll.do", new ProductAll());
		map.put("/productRing.do", new ProductRing());
		map.put("/productEarring.do", new ProductEarring());
		map.put("/productNecklace.do", new ProductNecklace());
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String uri = req.getRequestURI();
		String cpath = req.getContextPath();
		String path = uri.substring(cpath.length());
		System.out.println(path);

		DBCommand command = map.get(path);
		String viewPage = command.execute(req, resp);

		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
}
