package project.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import project.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSessionFactory factory;
	
	public int insert(UserVo vo) {
		int num = 0;
		SqlSession session = factory.openSession();
		try {
			num = session.insert("insertUser", vo);
		if(num >0) {
			System.out.println("insert commit");
		}else {
			session.rollback();
		}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			session.close();
		}
		return num;
	}

	public boolean loginCheck(UserVo vo) {
		SqlSession session = factory.openSession();
		String name = null;
		try {
			name = session.selectOne("loginCheck", vo);
		if(name != null) {
			System.out.println("·Î±×ÀÎ");
		}else {
			session.rollback();
		}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			session.close();
		}
		return (name==null)? false : true;
	}

}
