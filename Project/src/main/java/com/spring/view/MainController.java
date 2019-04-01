package com.spring.view;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.MemberService;
import com.spring.biz.vo.MemberVO;

@Controller
public class MainController {
	@Resource(name = "memberService")
	MemberService memberService;
	//메인페이지 가기
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	//메소드 실행~~
	public String main() {
		return "/jsp/main.jsp";
	}
	
	@RequestMapping(value = "/loginPage.do")
	public String loginPage() {
		return "/jsp/login_form.jsp";
	}
	//로그인 하기
	@RequestMapping(value = "/login.do")
	public String login(MemberVO vo, HttpSession session) {
		MemberVO memberVO = memberService.login(vo);
		if(memberVO != null) {
			session.setAttribute("memberId", memberVO.getMemberId());
		}
			return "/jsp/login_result.jsp";
	}
	//회원가입 페이지
		@RequestMapping(value = "/joinPage.do")
		public String joinPage() {
			return"/jsp/join_form.jsp";
		}
	//회원가입
	@RequestMapping(value = "/join.do")
	public String join(MemberVO vo, Model model) {
		int result = memberService.join(vo);
		model.addAttribute("result", result);
		return"/jsp/join_result.jsp";
	}
}

