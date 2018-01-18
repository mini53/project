package project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.vo.BoardVo;

@Repository
public class BoardDao {

	@Autowired
	private SqlSessionFactory factory;
	
	public List<BoardVo> BoardListSelect(BoardVo vo) {
		List<BoardVo> boardlist = null;
		SqlSession session = factory.openSession();
		try {
			boardlist = session.selectList("BoardListSelect",vo);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return boardlist;
	}

	public List<BoardVo> BoardDetailSelect(int bid) {
		List<BoardVo> boarddetail = null;
		SqlSession session = factory.openSession();
		try {
			boarddetail = session.selectList("BoardDetailSelect",bid);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return boarddetail;
	}

	public int BoardWrite(BoardVo vo) {
		int num =0;
		SqlSession session = factory.openSession();
		try {
			num = session.insert("BoardInsert",vo);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return num;
	}
}
