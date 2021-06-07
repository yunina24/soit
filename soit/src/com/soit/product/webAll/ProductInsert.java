package com.soit.product.webAll;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.product.service.ProductService;
import com.soit.product.serviceImpl.ProductServiceImpl;
import com.soit.product.vo.ProductVO;

public class ProductInsert implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("productName");
		String division = request.getParameter("productDivision");
		String image = request.getParameter("productImage");
		String desc = request.getParameter("productDesc");
		String price = request.getParameter("productPrice");
		String scope = request.getParameter("productscope");
		
		int p = Integer.parseInt(price);
		int s = Integer.parseInt(scope);
		
		ProductVO vo = new ProductVO();
		
		vo.setProductName(name);
		vo.setProductDivision(division);
		vo.setProductImage(image);
		vo.setProductDesc(desc);
		vo.setPrice(p);
		vo.setScope(s);
		
		ProductService service = new ProductServiceImpl();
		int c = service.insertProduct(vo);
		
		return "product/productInsert.tiles";
	}

}
