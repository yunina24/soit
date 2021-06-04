package com.soit.qna.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.qna.service.QnaService;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaSelect implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("bbs_num");
		QnaVO vo = new QnaVO();
		vo.setBbs_num(Integer.parseInt(id));
		
		QnaService service = new QnaServiceImpl();
		vo = service.qnaSelect(vo);
		
		request.setAttribute("qna", vo);
		return "qna/qnaSelect.tiles";
	}

}
