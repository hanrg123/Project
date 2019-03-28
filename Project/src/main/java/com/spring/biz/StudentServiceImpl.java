package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.biz.vo.ClassVO;
import com.spring.biz.vo.StudentInfoVO;
import com.spring.biz.vo.StudentVO;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String studentBoard() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ClassVO> selectClassList() {
		return sqlSession.selectList("selectClassList", new ClassVO());
	}

	@Override
	public List<StudentVO> selectStudentList(StudentVO vo) {
		return sqlSession.selectList("selectStudentList", vo);
	}

	@Override
	public StudentVO selectStudent(StudentVO vo) {
		return sqlSession.selectOne("selectStudent", vo);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean insertStudent(StudentVO vo) {
		int result1 = sqlSession.insert("insertStudent", vo);
		int result2 = sqlSession.insert("insertStudentInfo", vo);
		
		if(result1 + result2 == 2) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean updateStudent(StudentVO studentVO, StudentInfoVO studentInfoVO) {
		int result1 = sqlSession.update("updateStudent", studentVO);
		int result2 = sqlSession.update("updateStudentInfo", studentInfoVO);
		
		if(result1 + result2 == 2) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteStudent(StudentVO vo) {
		int result1 = sqlSession.delete("deleteStudent", vo);
		int result2 = sqlSession.delete("deleteStudentInfo", vo);
		
		if(result1 + result2 >= 2 && result1 == result2) {
			return true;
		}
		else {
			throw new RuntimeException();
		}
	}

}
