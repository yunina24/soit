package com.soit.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;

public class MemberMyPage implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "member/memberMyPage.tiles";
	}

}
