package com.soit.notice.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.notice.service.NoticeService;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;

public class NoticeInsert implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		NoticeVO vo = new NoticeVO();
		vo.setTitle(title);
		vo.setContent(content);
		
		NoticeService service = new NoticeServiceImpl();
		int c = service.insertNotice(vo);
		String path="";
		
		if(c>0) {
			path="/noticeListPaging.do";
		}else {
			path="/noticeForm.do";
		}
		return path;
	}

}
