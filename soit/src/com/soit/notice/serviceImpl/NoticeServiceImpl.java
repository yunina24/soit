package com.soit.notice.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.soit.common.DAO;
import com.soit.notice.service.NoticeService;
import com.soit.notice.vo.NoticeVO;

public class NoticeServiceImpl extends DAO implements NoticeService {
	PreparedStatement psmt;
	ResultSet rs;

	// 게시판 페이징 메소드...
	public List<NoticeVO> noticeListPaging(int page) {
		String SQL = "SELECT b.* \r\n" //
					+ "FROM(SELECT rownum m, a.*\r\n" //
					+ "     FROM (select * from notice n order by bbs_num)a\r\n" //
					+ "     )b\r\n" //
					+ "where b.m between ? and ?";

		List<NoticeVO> list = new ArrayList<>();
		int firstCnt =0, lastCnt = 0;
		firstCnt = (page-1)*10 +1; // 1
		lastCnt = (page * 10); //10

		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, firstCnt);
			psmt.setInt(2, lastCnt);
			rs = psmt.executeQuery();
			while (rs.next()) {
				NoticeVO vo = new NoticeVO();
				vo.setBbs_num(rs.getInt("bbs_num"));
				vo.setTitle(rs.getString("title"));
				//vo.setContent(rs.getString("content"));
				//vo.setWriter(rs.getString("writer"));
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
	public List<NoticeVO> noticeSelectList() {
		String SQL = "SELECT * FROM NOTICE ORDER BY 1";
		List<NoticeVO> list = new ArrayList<>();

		try {
			psmt = conn.prepareStatement(SQL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				NoticeVO vo = new NoticeVO();
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
	public NoticeVO noticeSelect(NoticeVO vo) {
		String SQL = "SELECT * FROM NOTICE WHERE BBS_NUM=?";

		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, vo.getBbs_num());
			rs = psmt.executeQuery();
			if (rs.next()) {
				hitCount(vo.getBbs_num()); // 해당 아이디로 조회되는 게시글의 조회수 증가
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWriter(rs.getString("writer"));
				vo.setUp_date(rs.getDate("up_date"));
				vo.setHit(rs.getInt("hit"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		String SQL = "INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, TITLE=?, CONTENT=?, WRITER=? SYSDATE, 0)";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setString(3, vo.getWriter());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r; //업데이트 정상되면 1로 값이 넘어감, 아니면 0으로 넘어감
	}

	@Override
	public int updateNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteNotice(NoticeVO vo) {
		String SQL = "UPDATE NOTICE SET TITLE=?, CONTENT=? WHERE BBS_NUM=?";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setInt(3, vo.getBbs_num());
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
		String SQL = "UPDATE NOTICE SET HIT = HIT+1 WHERE BBS_NUM=?";

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
