package com.spring.blossom.persistence;

import com.spring.blossom.domain.MemberVO;

public interface MemberDAO {

	MemberVO select(String memberId);

	String login(String memberId, String memberPw);
	

}
