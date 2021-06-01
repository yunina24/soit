package com.soit.notice.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;

public class NoticeForm implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "notice/noticeForm.tiles";
	}

}
