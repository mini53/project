package project.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.BoardDao;
import project.vo.BoardVo;
@Service
public class BoardBiz {

	@Autowired
	BoardDao boarddao;

	public List<BoardVo> BoardListSelect(BoardVo vo) {
		List<BoardVo> boardlist = boarddao.BoardListSelect(vo);
		return boardlist;
	}

	public List<BoardVo> BoardDetailSelect(int bid) {
		List<BoardVo> boarddetail = boarddao.BoardDetailSelect(bid);
		return boarddetail;
	}

	public int BoardWrite(BoardVo vo) {
		int num = boarddao.BoardWrite(vo);
		return num;
	}

}
