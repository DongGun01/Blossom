package com.spring.blossom.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.blossom.domain.MemberVO;
import com.spring.blossom.persistence.MemberDAO;

@Service
public class MemberServiceImple implements MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImple.class);
	
	@Autowired
	private MemberDAO MemberDAO;
	
	@Override
	public boolean idCheck(String memberId) {
		
		return false;
	}

	@Override
	public boolean nicknameCheck(String memberNickname) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int create(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO read(String memberId) {
		logger.info("Service 회원정보 가져오기 memberId : " + memberId);
		return MemberDAO.select(memberId);
	}
	
	@Override
	public String login(String memberId, String memberPw) {
		logger.info("Service 로그인 시도");
		return MemberDAO.login(memberId, memberPw);
	}


}
