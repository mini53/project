package project.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.UserDao;
import project.vo.UserVo;

@Service
public class UserBiz {
	@Autowired
	private UserDao userdao;

	public int UserRegister(UserVo vo) {
		/*SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
		Date currentTime = new Date (); 
		String mTime = mSimpleDateFormat.format ( currentTime );
		차후 시간을 입력해주기 위한  
		*/
		int num = userdao.insert(vo);
		return num;
	}


/*	public boolean loginCheck(UserVo vo, HttpSession session) {
		System.out.println("biz " + vo.toString());
		boolean result = ud.loginCheck(vo);
		 if (result) { // true일 경우 세션에 등록
	            // 세션 변수 등록
	            session.setAttribute("userid", vo.getUserid());
	            session.setAttribute("name", "test 중");
	        } 
	     return result;
	}*/

}
