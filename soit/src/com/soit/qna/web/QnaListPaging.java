package com.soit.qna.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.common.Paging;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaListPaging implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int pageCnt = Integer.parseInt(page);

		QnaServiceImpl service = new QnaServiceImpl();
		List<QnaVO> total = service.qnaSelectList();

		service = new QnaServiceImpl();
		List<QnaVO> list = service.qnaListPaging(pageCnt);

		Paging paging = new Paging();
		paging.setPageNo(pageCnt);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());

		request.setAttribute("qnaList", list);
		request.setAttribute("paging", paging);

		return "qna/qnaListPaging.tiles";
	}

}
