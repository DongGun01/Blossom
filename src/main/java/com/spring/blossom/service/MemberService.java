package com.spring.blossom.service;

import com.spring.blossom.domain.MemberVO;

public interface MemberService {
	
	int idCheck(String memberId); // 아이디 중복확인
	int nicknameCheck(String memberNickname); // 닉네임 중복확인
	int create(MemberVO vo); // 회원정보 등록
	MemberVO read(String memberId); // 회원정보 가져오기
	String login(String memberId, String memberPw); // 로그인
}
