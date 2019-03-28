package com.spring.biz;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public UserVO login(UserVO vo) {
		UserVO result = sqlSession.selectOne("login", vo);
		return result;
	}


}
