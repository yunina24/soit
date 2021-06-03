package com.soit.member.service;

import java.util.List;

import com.soit.member.vo.MemberVO;

public interface MemberService {
	List<MemberVO> selectMemberList();
	MemberVO selectMember(MemberVO vo);
	public int insertMember(MemberVO vo);
	public int updateMember(MemberVO vo);
	public int deleteMember(MemberVO vo);
}
