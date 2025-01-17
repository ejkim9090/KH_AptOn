package kh.teamproject.apton.defectreception.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;

@Repository("boardDao")
public class BoardDefectreceptionDao { 
	
	public static final int deleteBoard = 0;

	//TODO SJH autocommit을 끄기 위해 추가했으나  getSqlSessionFactory메소드를 꼭 써야하는지 확인이 필요함
	private SqlSessionFactory getSqlSessionFactory() {
		String resource = "/mybatis-config.xml";
		SqlSessionFactory factory = null;
		try {
			// InputStream으로 Mybatis의 설정 정보를 읽어 온다
			InputStream inputStream = Resources.getResourceAsStream(resource);
			// 읽어 온 Mybatis의 설정 정보를 바탕으로 SqlSessionFactoryBuilder를 생성한다
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return factory;
	}
	
	@Autowired
	private SqlSession sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("DrBoard.getListCount");
	}

	public List<DrBoard> selectBoardList(int currentPage, int limit)  throws Throwable, Exception {
		List<DrBoard> drblist;
		
		int startRow = (currentPage - 1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		drblist = sqlSession.selectList("DrBoard.selectBoardList", null, row);
		return drblist;
	}

	public List<DrBoard> selectContentView(int drno) {
		List<DrBoard> drblist;
		
		drblist = sqlSession.selectList("DrBoard.selectContentView",drno);
		return drblist;
	}

	public int insertBoard(DrBoard bvo) {
		int result = 0;
		
//		sqlSession = getSqlSessionFactory().openSession(false);
		result = sqlSession.insert("DrBoard.insertContent", bvo);
		if (result > 0) {
//			sqlSession.commit();
		}else {
//			sqlSession.rollback();
		}
		
		return result;
	}
	
	public int insertBoardwithImg(DrBoard bvo) {
		int result = 0;
		result = sqlSession.insert("DrBoard.insertContentwithImg", bvo);
		return result;
	}

	public int updateBoard(DrBoard bvo) {
		int result = 0;
		result = sqlSession.update("DrBoard.updateContent", bvo);
		if (result == 0) {
			System.out.println("dao단 이미지 없는 글 업데이트 중 오류발생");
		}
		return result;
	}
	
	public int updateBoardwithImg(DrBoard bvo) {
		int result = 0;
		result = sqlSession.update("DrBoard.updateContent",bvo);
		result = sqlSession.update("DrBoard.updateContentwithImg",bvo);
		
		//되기는하나 이미 이미지가 있을경우 오류발생
		//result += sqlSession.insert("DrBoard.insertforUpdateContentwithImg",bvo);
		
		if (result == 0) {
			System.out.println("dao단 이미지업데이트 중 오류발생");
		}
		return result;
	}

	public int deleteBoard(DrBoard bvo) {
		int result = 0;
		result = sqlSession.delete("DrBoard.deleteContent", bvo);
		if (result == 0) {
			System.out.println("dao단오류발생");
		}
		return result;
	}

	


	
	

}
