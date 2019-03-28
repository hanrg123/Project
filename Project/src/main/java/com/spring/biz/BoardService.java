package com.spring.biz;

import java.util.List;
import com.spring.biz.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> selectBoardList();
	//글등록
	public int insertBoard(BoardVO vo);
	//게시글 상세보기
	public BoardVO selectBoard(BoardVO vo);
	//게시글 삭제
	public int deleteBoard(BoardVO vo);
	//게시글 수정
	public int updateBoard(BoardVO vo);
	
	public int updateReadCnt(BoardVO vo);
	
}
