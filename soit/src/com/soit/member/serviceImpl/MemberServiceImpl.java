package com.soit.member.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.soit.common.DAO;
import com.soit.member.service.MemberService;
import com.soit.member.vo.MemberVO;

public class MemberServiceImpl extends DAO implements MemberService {
	PreparedStatement psmt;
	ResultSet rs;
	
	//아이디, 비밀번호 체크하는 메소드...
	public MemberVO loginCheck(MemberVO vo) {
		String SQL = "SELECT * FROM MEMBER WHERE ID=? AND PASSWORD=?";
		MemberVO rvo = null;
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			rs = psmt.executeQuery();
			if(rs.next()) {
				rvo = new MemberVO();
				rvo.setId(rs.getString("id"));
				rvo.setName(rs.getString("name"));
				rvo.setPassword(rs.getString("password"));
				rvo.setPhone_number(rs.getString("phone_number"));
				rvo.setAddress(rs.getString("address"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rvo;
	}
	
	//id 중복체크 메소드... 중복존재: true 아니면 false
	public boolean idCheck(String id) {
		boolean exist = false;
		String SQL = "SELECT ID FROM MEMBER WHERE ID=?";
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				exist = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return exist;
	}
	
	@Override
	public List<MemberVO> selectMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		String sql = "select * from member where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setPassword(rs.getString("password"));
				vo.setPhone_number(rs.getString("phone_number"));
				vo.setAddress(rs.getString("address"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}

	@Override
	public int insertMember(MemberVO vo) {
		String SQL = "INSERT INTO MEMBER VALUES(?, ?, ?, ?, ?)";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getName());
			psmt.setString(3, vo.getPassword());
			psmt.setString(4, vo.getPhone_number());
			psmt.setString(5, vo.getAddress());
			r = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

	@Override
	public int updateMember(MemberVO vo) {
		String sql = "update member set password = ? , phone_number = ? , address = ? where id = ?"; 
		int n = 0;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getPassword());
			psmt.setString(2, vo.getPhone_number());
			psmt.setString(3, vo.getAddress());
			psmt.setString(4, vo.getId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;	
	}

	@Override
	public int deleteMember(MemberVO vo) {
		String sql = "delete from member where id = ? ";
		int r = 0;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			
			r= psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}
	
	private void close() {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(psmt != null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
