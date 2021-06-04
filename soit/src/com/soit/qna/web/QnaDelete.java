package com.soit.qna.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.qna.service.QnaService;
import com.soit.qna.serviceImpl.QnaServiceImpl;
import com.soit.qna.vo.QnaVO;

public class QnaDelete implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		QnaVO vo = new QnaVO();
		vo.setBbs_num(Integer.parseInt(id));
		QnaService service = new QnaServiceImpl();
		
		int r = service.deleteQna(vo);
		String path = "";
		
		if(r>0) {
			path = "qna/qnaListPaging.do";
		}else {
			path = "qna/qna.do";
		}
		
		return path;
	}

}
