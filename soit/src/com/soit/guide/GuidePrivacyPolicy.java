package com.soit.guide;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;

public class GuidePrivacyPolicy implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "guide/privacyPolicy.tiles";
	}

}
