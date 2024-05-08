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
	public int idCheck(String memberId) {
		int result = MemberDAO.CheckId(memberId);
		logger.info("service 아이디 중복체크 메소드 호출 memberId : " + memberId);
		return result;
	}

	@Override
	public int nicknameCheck(String memberNickname) {
		int result = MemberDAO.checkNickname(memberNickname);
		logger.info("Service 닉네임 중복체크 메소드 호출 memberNickname : " + memberNickname);
		return result;
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
