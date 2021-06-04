package com.soit.qna.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.qna.service.QnaService;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaUpdate implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("bbs_num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		QnaVO vo = new QnaVO();
		vo.setBbs_num(Integer.parseInt(id));
		vo.setTitle(title);
		vo.setContent(content);
		
		QnaService service = new QnaServiceImpl();
		int r = service.updateQna(vo);
		String path = "";
		
		if( r != 0) {
			path = "qna/qnaListPaging.tiles";
		} else {
			path = "qna/qnaListPaging.tiles";
		}
		
		return path;
	}

}
