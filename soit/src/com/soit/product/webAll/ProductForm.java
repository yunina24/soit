package com.soit.product.webAll;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soit.common.DBCommand;

public class ProductForm implements DBCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		return "product/productForm.tiles";
	}

}
