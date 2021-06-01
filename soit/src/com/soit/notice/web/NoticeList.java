package com.soit.notice.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.notice.service.NoticeService;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;

public class NoticeList implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		NoticeService service = new NoticeServiceImpl();
		List<NoticeVO> list = service.noticeSelectList();
		
		request.setAttribute("noticeList", list);
		return "notice/noticeList.tiles";
	}

}
