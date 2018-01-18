package com.playdata.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.playdata.board.dao.AlbumDao;
import com.playdata.board.model.AlbumDto;
import com.playdata.util.BoardConstance;

@Service
public class AlbumServiceImpl implements AlbumService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int writeArticle(AlbumDto albumDto) {
		AlbumDao albumDao = sqlSession.getMapper(AlbumDao.class);
		return albumDao.writeArticle(albumDto);
	}

	@Override
	public AlbumDto viewArticle(int seq) {
		AlbumDao albumDao = sqlSession.getMapper(AlbumDao.class);
		return null;
	}

	@Override
	public List<AlbumDto> listArticle(Map<String, String> map) {
		AlbumDao albumDao = sqlSession.getMapper(AlbumDao.class);
		int pg = Integer.parseInt(map.get("pg"));
		int end = BoardConstance.ALBUM_LIST_SIZE * pg;
		int start = end - BoardConstance.ALBUM_LIST_SIZE;
		map.put("start", start + "");
		map.put("end", end + "");
		return albumDao.listArticle(map);
	}

	@Override
	public void modifyArticle(AlbumDto albumDto) {
		AlbumDao albumDao = sqlSession.getMapper(AlbumDao.class);

	}

	@Override
	public void deleteArticle(int seq) {
		AlbumDao albumDao = sqlSession.getMapper(AlbumDao.class);

	}

}
