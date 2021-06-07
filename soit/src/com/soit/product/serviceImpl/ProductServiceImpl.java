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
		sql = "select * from product order by 1 DESC";
		List<ProductVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
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
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_NUM = ? ";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getProductNum());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
				vo.setProductName(rs.getString("PRODUCT_NAME"));
				vo.setProductDivision(rs.getString("PRODUCT_DIVISION"));
				vo.setProductImage(rs.getString("PRODUCT_IMAGE"));
				vo.setProductDesc(rs.getString("PRODUCT_DESC"));
				vo.setPrice(rs.getInt("PRICE"));
				vo.setScope(rs.getInt("SCOPE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return vo;
	}

	@Override
	public int insertProduct(ProductVO vo) {
		String sql = "insert into product values(product_seq.nextval, ? ,? ,? ,? ,? ,?)";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getProductName());
			psmt.setString(2, vo.getProductDivision());
			psmt.setString(3, vo.getProductImage());
			psmt.setString(4, vo.getProductDesc());
			psmt.setInt(5, vo.getPrice());
			psmt.setInt(6, vo.getScope());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}

	@Override
	public int updateProduct(ProductVO vo) {
		return 0;
	}

	@Override
	public int deleteProduct(ProductVO vo) {
		String sql = "delete from product where product_num=?";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getProductNum());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
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

	

	@Override // ring 조회 
	public List<ProductVO> ProductRingList() {
		sql = "SELECT * FROM PRODUCT WHERE PRODUCT_DIVISION = 'RING' ORDER BY 1 DESC";
		List<ProductVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
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
	public List<ProductVO> ProductEarringList() {
		sql = "SELECT * FROM PRODUCT WHERE PRODUCT_DIVISION = 'EARR' ORDER BY 1 DESC";
		List<ProductVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
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
	public List<ProductVO> ProductNecklaceList() {
		sql = "SELECT * FROM PRODUCT WHERE PRODUCT_DIVISION = 'NECT' ORDER BY 1 DESC";
		List<ProductVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductNum(rs.getInt("PRODUCT_NUM"));
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
	
}
