package com.spring.blossom.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.blossom.domain.MemberVO;

@Repository
public class MemberDAOImple implements MemberDAO {

	private static final Logger logger = 
			LoggerFactory.getLogger(MemberDAOImple.class);
	
	private static final String NAMESPACE = 
			"com.spring.blossom.MemberMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO select(String memberId) {
		logger.info("DAO 회원정보 가져오기 memberId : " + memberId);
		return sqlSession.selectOne(NAMESPACE + ".select_by_member_id", memberId);
	}

	@Override
	public String login(String memberId, String memberPw) {
		logger.info("DAO 로그인");
		Map<String, Object> args = new HashMap<String, Object>();
		args.put("memberId", memberId);
		args.put("memberPw", memberPw);
		return sqlSession.selectOne(NAMESPACE + ".login", args);
	}

	@Override
	public int checkNickname(String memberNickname) {
		logger.info("checkNickname : " + memberNickname);
		return sqlSession.selectOne(NAMESPACE + ".select_by_nickname", memberNickname);
	}

	@Override
	public int CheckId(String memberId) {
		logger.info("checkId : " + memberId);
		return sqlSession.selectOne(NAMESPACE + ".select_by_id", memberId);
	}

}
