package project.biz;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.TeamDao;
import project.vo.TeamVo;

@Service
public class TeamBiz {
	@Autowired
	private TeamDao teamdao;
	
	public int TeamRegister(TeamVo vo) {
		System.out.println("dd" + vo.getDdate());
		System.out.println("ss" + vo.getSdate());
		int num = teamdao.TeamRegister(vo);
		return num;
	}

}
