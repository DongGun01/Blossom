package com.spring.blossom.persistence;

import com.spring.blossom.domain.MemberVO;

public interface MemberDAO {

	// Controller
	MemberVO select(String memberId);
	String login(String memberId, String memberPw);
	
	// RESTController
	int checkNickname(String memberNickname);
	int CheckId(String memberId);
}
