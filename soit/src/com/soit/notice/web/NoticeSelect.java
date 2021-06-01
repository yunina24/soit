package com.soit.notice.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.notice.service.NoticeService;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;

public class NoticeSelect implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//한건 조회 -> notice.jsp
		String id = request.getParameter("bbs_num");
		NoticeService service = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO(); 
		vo.setBbs_num(Integer.parseInt(id));
		vo = service.noticeSelect(vo);
		
		request.setAttribute("notice", vo);
		return "notice/noticeSelect.tiles";
	}

}
