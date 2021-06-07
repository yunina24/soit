package com.soit.product.webAll;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;
import com.soit.product.service.ProductService;
import com.soit.product.serviceImpl.ProductServiceImpl;
import com.soit.product.vo.ProductVO;

public class ProductSelect implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String num = request.getParameter("ProductNum");
		ProductVO vo = new ProductVO();
		vo.setProductNum(Integer.parseInt(num));
		
		ProductService service = new ProductServiceImpl();
		vo = service.ProductSelect(vo);
		
		request.setAttribute("product", vo);	
		return "product/productSelect.tiles";
	}

}
