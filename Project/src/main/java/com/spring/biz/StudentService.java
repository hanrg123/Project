package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.ClassVO;
import com.spring.biz.vo.StudentInfoVO;
import com.spring.biz.vo.StudentVO;

public interface StudentService {
	public String studentBoard();
	public List<ClassVO> selectClassList();
	public List<StudentVO> selectStudentList(StudentVO vo);
	public StudentVO selectStudent(StudentVO vo);
	public boolean insertStudent(StudentVO vo);
	public boolean updateStudent(StudentVO studentVO, StudentInfoVO studentInfoVO);
	public boolean deleteStudent(StudentVO vo);
	
}
