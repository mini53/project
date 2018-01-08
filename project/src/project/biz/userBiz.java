package project.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.userdao;
import project.vo.uservo;

@Service
public class userBiz {
	@Autowired
	private userdao ud;
	
	public int userInsert(uservo vo) {
			System.out.println(vo.toString());
		int num = ud.insert(vo);
		return num;
	}

	public boolean loginCheck(uservo vo, HttpSession session) {
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
