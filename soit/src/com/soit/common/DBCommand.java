package com.soit.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface DBCommand {
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
}
