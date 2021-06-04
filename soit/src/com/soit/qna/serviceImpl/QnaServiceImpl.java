package com.soit.qna.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.soit.common.DAO;
import com.soit.qna.service.QnaService;
import com.soit.qna.vo.QnaVO;

public class QnaServiceImpl extends DAO implements QnaService{
	PreparedStatement psmt;
	ResultSet rs;

	// 게시판 페이징 메소드...
	public List<QnaVO> qnaListPaging(int page) {
		String SQL = "SELECT b.*\r\n"//
					+ "FROM(SELECT rownum m, a.*\r\n"//
					+ "FROM (SELECT bbs_num, UPPER_NUM, TITLE, WRITER, UP_DATE, HIT\r\n"//
					+ "FROM QNA\r\n"//
					+ "START WITH UPPER_NUM = 0\r\n"//
					+ "CONNECT BY PRIOR bbs_num = UPPER_NUM\r\n"//
					+ "ORDER SIBLINGS BY GROUP_NO DESC)a\r\n"//
					+ ")b\r\n"//
					+ "where b.m between ? and ?";

		List<QnaVO> list = new ArrayList<>();
		int firstCnt =0, lastCnt = 0;
		firstCnt = (page-1)*10 +1; // 1
		lastCnt = (page * 10); //10

		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, firstCnt);
			psmt.setInt(2, lastCnt);
			rs = psmt.executeQuery();
			while (rs.next()) {
				QnaVO vo = new QnaVO();
				vo.setBbs_num(rs.getInt("bbs_num"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				vo.setUp_date(rs.getDate("up_date"));
				vo.setHit(rs.getInt("hit"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<QnaVO> qnaSelectList() {
		String SQL = "SELECT bbs_num, UPPER_NUM, TITLE, WRITER, UP_DATE, HIT\r\n"//
					+ "FROM QNA\r\n"//
					+ "START WITH UPPER_NUM = 0\r\n"//
					+ "CONNECT BY PRIOR bbs_num = UPPER_NUM\r\n"//
					+ "ORDER SIBLINGS BY GROUP_NO DESC";
		List<QnaVO> list = new ArrayList<>();

		try {
			psmt = conn.prepareStatement(SQL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				QnaVO vo = new QnaVO();
				vo.setBbs_num(rs.getInt("bbs_num"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				vo.setUp_date(rs.getDate("up_date"));
				vo.setHit(rs.getInt("hit"));
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
	public QnaVO qnaSelect(QnaVO vo) {
		String SQL = "SELECT * FROM QNA WHERE BBS_NUM=?";		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, vo.getBbs_num());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWriter(rs.getString("writer"));
				vo.setUp_date(rs.getDate("up_date"));
				vo.setHit(rs.getInt("hit"));
				
				hitCount(vo.getBbs_num()); 
				// 해당 아이디로 조회되는 게시글의 조회수 증가
			}	

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	@Override
	public int insertQna(QnaVO vo) {
		String SQL = "INSERT INTO QNA(BBS_NUM, UPPER_NUM, TITLE, CONTENT, WRITER, UP_DATE, HIT, PRODUCT_CODE, GROUP_NO) VALUES(QNA_SEQ.NEXTVAL, ?, ?, ?, ?, SYSDATE, 0, ?, ?)";
		int r = 0;
		
//		int num = vo.getBbs_num();
//		int group = vo.getGroup_no();
//		int upper = vo.getUpper_num();
//
//		if( upper == 0 ) {
//			group = num;
//		}
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, vo.getUpper_num());
			psmt.setString(2, vo.getTitle());
			psmt.setString(3, vo.getContent());
			psmt.setString(4, vo.getWriter());
			psmt.setString(5, vo.getProduct_code());
			psmt.setInt(6, vo.getGroup_no());
			
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r; //업데이트 정상되면 1로 값이 넘어감, 아니면 0으로 넘어감
	}

	@Override
	public int updateQna(QnaVO vo) {
		String sql = "UPDATE QNA SET TITLE=? , CONTENT=? WHERE BBS_NUM=?";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setInt(3, vo.getBbs_num());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	@Override
	public int deleteQna(QnaVO vo) {
		String SQL = "DELETE FROM QNA WHERE BBS_NUM=?";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, vo.getBbs_num());
			
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}
	
	// 게시글 클릭시 조회수 증가 메소드...
	public void hitCount(int id) {
		String SQL = "UPDATE QNA SET HIT = HIT+1 WHERE BBS_NUM=?";

		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, id);
			psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
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
