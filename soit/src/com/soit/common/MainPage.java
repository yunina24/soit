package com.soit.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.product.service.ProductService;
import com.soit.product.serviceImpl.ProductServiceImpl;
import com.soit.product.vo.ProductVO;

public class MainPage implements DBCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

			ProductService service = new ProductServiceImpl();
			List<ProductVO> list = service.ProductSelectList();
			request.setAttribute("product", list);
			
		return "layout/home.tiles";
	}

}
	