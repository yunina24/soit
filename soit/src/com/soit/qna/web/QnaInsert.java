package com.soit.qna.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.qna.service.QnaService;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaInsert implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		QnaVO vo = new QnaVO();
		vo.setTitle(title);
		vo.setContent(content);
		
		QnaService service = new QnaServiceImpl();
		int c = service.insertQna(vo);
		String path = "";
		
		if ( c > 0) {
			path = "qnaListPaging.do";
		} else {
			path = "qnaForm.do";
		}
		return path;
	}

}
