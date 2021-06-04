package com.soit.product.service;

import java.util.List;

import com.soit.product.vo.ProductVO;

public interface ProductService {
	List<ProductVO> ProductSelectList();
	ProductVO ProductSelect(ProductVO vo);
	int insertProduct(ProductVO vo);
	int updateProduct(ProductVO vo);
	int deleteProduct(ProductVO vo);

}
