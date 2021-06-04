package com.soit.product.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.soit.common.DAO;
import com.soit.product.service.ProductService;
import com.soit.product.vo.ProductVO;

public class ProductServiceImpl extends DAO implements ProductService {
	PreparedStatement psmt;
	ResultSet rs;
	String sql;
	
	
	@Override
	public List<ProductVO> ProductSelectList() {
		sql = "select * from product order by 1";
		List<ProductVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
				vo.setProductCode(rs.getString("PRODUCT_CODE"));
				vo.setProductName(rs.getString("PRODUCT_NAME"));
				vo.setProductDivision(rs.getString("PRODUCT_DIVISION"));
				vo.setProductImage(rs.getString("PRODUCT_IMAGE"));
				vo.setProductDesc(rs.getString("PRODUCT_DESC"));
				vo.setPrice(rs.getInt("PRICE"));
				vo.setScope(rs.getInt("SCOPE"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}

	@Override
	public ProductVO ProductSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertProduct(ProductVO vo) {
		String sql = "insert into product values(product_seq.nextval, ? ,? ,? ,? ,? ,? ,?)";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getProductCode());
			psmt.setString(2, vo.getProductName());
			psmt.setString(3, vo.getProductDivision());
			psmt.setString(4, vo.getProductImage());
			psmt.setString(5, vo.getProductDesc());
			psmt.setInt(6, vo.getPrice());
			psmt.setInt(7, vo.getScope());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}

	@Override
	public int updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void close() {

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (psmt != null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
