package com.spring.biz;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.MemberVO;
@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	//로그인
	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO result = sqlSession.selectOne("login", vo);
		return result;
	}
	//회원가입
	@Override
	public int join(MemberVO vo) {
		int result = sqlSession.insert("join", vo);
		return result;
	}
	
}
