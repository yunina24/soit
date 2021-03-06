package com.soit.product.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.product.service.ProductService;
import com.soit.product.serviceImpl.ProductServiceImpl;
import com.soit.product.vo.ProductVO;

public class ProductNecklace implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		ProductService service = new ProductServiceImpl();
		List<ProductVO> list = service.ProductNecklaceList();
		request.setAttribute("product", list);
		
		return "product/necklace.tiles";
	}

}
