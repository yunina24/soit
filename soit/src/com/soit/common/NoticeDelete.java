package com.soit.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.notice.service.NoticeService;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;

public class NoticeDelete implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("did");
		NoticeVO vo = new NoticeVO();
		vo.setBbs_num(Integer.parseInt(id));
		NoticeService service = new NoticeServiceImpl();
		
		int r = service.deleteNotice(vo);
		String path = "";
		
		if(r>0) {
			path = "/noticeListPaging.do";
		}else {
			path = "/notice.do";
		}
		
		return path;
	}

}
