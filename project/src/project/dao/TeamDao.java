package project.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.vo.TeamVo;

@Repository
public class TeamDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public SqlSession driver() {
		SqlSession session = factory.openSession();
		return session;
	} // sqlseeion 계속 쓰기 싫어서 만든 method

	public int TeamRegister(TeamVo vo) {
		int num = 0;
		try {
			num = driver().insert("TeamRegister", vo);
			System.out.println("insert Team"+ num);
		}catch(Exception e) {
			System.out.println(e.getStackTrace());
			System.out.println(e.getMessage());
		}finally {
			driver().close();
		}
		return num;
	}

}
