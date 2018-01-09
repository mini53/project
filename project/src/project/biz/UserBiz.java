package project.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.UserDao;
import project.vo.UserVo;

@Service
public class UserBiz {
	@Autowired
	private UserDao ud;
	
	public int userInsert(UserVo vo) {
			System.out.println(vo.toString());
		int num = ud.insert(vo);
		return num;
	}

	public boolean loginCheck(UserVo vo, HttpSession session) {
		System.out.println("biz " + vo.toString());
		boolean result = ud.loginCheck(vo);
		 if (result) { // true일 경우 세션에 등록
	            // 세션 변수 등록
	            session.setAttribute("userid", vo.getUserid());
	            session.setAttribute("name", "test 중");
	        } 
	     return result;
	}

}
