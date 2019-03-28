package com.spring.biz;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardVO> selectBoardList() {
		return sqlSession.selectList("selectBoardList", new BoardVO());
	}

	@Override
	public int insertBoard(BoardVO vo) {
		sqlSession.insert("insertBoard", vo);
		return 0;
	}

	@Override
	public BoardVO selectBoard(BoardVO vo) {
		return sqlSession.selectOne("selectBoard", vo);
	}

	@Override
	public int deleteBoard(BoardVO vo) {
		return sqlSession.delete("deleteBoard", vo);
	}

	@Override
	public int updateBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReadCnt(BoardVO vo) {
		return sqlSession.update("updateReadCnt", vo);
	}


}
