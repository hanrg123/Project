package com.spring.biz;

import com.spring.biz.vo.MemberVO;

public interface MemberService {
	//로그인
	public MemberVO login(MemberVO vo);
	//회원가입
	public int join(MemberVO vo);
}
