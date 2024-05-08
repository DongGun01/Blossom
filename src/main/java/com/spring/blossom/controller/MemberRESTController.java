package com.spring.blossom.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.blossom.service.MemberService;

@RestController
@RequestMapping(value = "/member")
public class MemberRESTController {
	private static final Logger logger = LoggerFactory.getLogger(MemberRESTController.class);
	
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/NicknameCheck")
	public int nicknameCheck(@RequestParam("memberNickname") String nickname) {
		logger.info("닉네임 중복체크 메소드 호출");
		logger.info(nickname);
		try {
			nickname = URLDecoder.decode(nickname, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		logger.info(nickname);
		int result = memberService.nicknameCheck(nickname);
		return result;
	}
	
	@PostMapping("/IdCheck")
	public int idCheck(@RequestParam("memberId") String Id) {
		try {
			Id = URLDecoder.decode(Id, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		logger.info(Id);
		int result = memberService.idCheck(Id);
		return result;
	}
	
}
