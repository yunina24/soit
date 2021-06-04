package com.soit.qna.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.qna.service.QnaService;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaList implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		QnaService service = new QnaServiceImpl();
		List<QnaVO> list = service.qnaSelectList();
		
		request.setAttribute("qnaList", list);
		
		return "qna/qnaList.tiles";
	}

}
