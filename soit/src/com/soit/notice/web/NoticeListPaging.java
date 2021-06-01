package com.soit.notice.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.common.Paging;
import com.soit.notice.serviceImpl.NoticeServiceImpl;
import com.soit.notice.vo.NoticeVO;
	
public class NoticeListPaging implements DBCommand {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page"); //사용자가 보고싶은 페이지 번화
		if(page == null)
			page ="1";
		int pageCnt = Integer.parseInt(page);
		
		//전체건수를 위해 실행
		NoticeServiceImpl service = new NoticeServiceImpl();
		List<NoticeVO> total = service.noticeSelectList(); //전체 카운트

		//현재 페이지 리스트를 위해 실행
		service = new NoticeServiceImpl();
		List<NoticeVO>list = service.noticeListPaging(pageCnt);
		
        Paging paging = new Paging();
        paging.setPageNo(pageCnt);
        paging.setPageSize(10);
        paging.setTotalCount(total.size());

        request.setAttribute("noticeList", list);
        request.setAttribute("paging", paging);
        
		return "notice/noticeListPaging.tiles";
	}
}
