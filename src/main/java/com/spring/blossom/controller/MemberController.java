package com.spring.blossom.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.blossom.domain.MemberVO;
import com.spring.blossom.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberSerivce;
	
	// memberController 기능
	// 상단에 로그인 상태 표시 (로그인시 상단에 이름or 닉네임 떠야함 로그인 아닐경우 로그인 링크 뜨게)
	// 회원가입 기능 로그인 아이디 찾기 비밀번호 찾기 아이디 저장 + 자동 로그인 기능
	// 회원 프로필 만들기
	// 회원 구매내역 + 결제수단 저장
	// 회원 상품리뷰
	
	@GetMapping("/singup")
	public void showSingUp() {
		logger.info("회원가입 페이지를 보여줍니다.");
	}
	
	@GetMapping("/login")
	public void showLogin() {
		logger.info("로그인 페이지를 보여줍니다.");
	}
	
	@PostMapping("/singin")
	public String loginPOST(String memberId, String memberPw, String targetURL, RedirectAttributes reAttr, HttpServletRequest request) {
		logger.info("loginPost 호출 memberId = " + memberId + ", memberPw = " + memberPw);
		String result = memberSerivce.login(memberId, memberPw);
		if (result != null) {
			MemberVO vo = memberSerivce.read(memberId);
			String memberName = vo.getMemberName();
			String memberNickname = vo.getMemberNickname();
			int memberLevel = vo.getMemberLevel();
			String memberAddress = vo.getMemberAddress();
			reAttr.addFlashAttribute("login_result", "success");
			HttpSession session = request.getSession();
			logger.info("로그인 성공 session" + session);
			session.setAttribute("memberName", memberName);
			session.setAttribute("memberNickname", memberNickname);
			session.setAttribute("memberLevel", memberLevel);
			session.setAttribute("memberAddress", memberAddress);
			session.setMaxInactiveInterval(1800);
			logger.info(targetURL);
			if (targetURL != null) {
				return "redirect:" + targetURL;
			} else {
				return "redirect:/";
			}
			
		} else {
			if (targetURL != null) {
				try {
					targetURL = URLEncoder.encode(targetURL, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					
				}
				return "redirect:/member/login?targetURL=" + targetURL;
			} else {
				reAttr.addFlashAttribute("loginResult", "fail");
				return "redirect:/memeber/login";
			}
		}
		
	} // end loginPOST
	
	@PostMapping("singout")
	public String logoutPOST(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	} // end logoutPOST
	
	
	
	
	
	
	
	
	
	
	
	
	
}