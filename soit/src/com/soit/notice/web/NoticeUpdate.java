package com.soit.notice.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.notice.service.NoticeService;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;

public class NoticeUpdate implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("bbs_num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		NoticeVO vo = new NoticeVO();
		vo.setBbs_num(Integer.parseInt(id));
		vo.setTitle(title);
		vo.setContent(content);
		
		NoticeService service = new NoticeServiceImpl();
		int r = service.updateNotice(vo);
		String path="";
		
		if(r!=0) {
			path = "/noticeListPaging.do";
		} else {
			path = "/notice.do";
		}
		
		return path;
	}

}
