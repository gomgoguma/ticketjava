package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ProductVo;

@Repository
public class BusinessDao {

	@Autowired
	private SqlSession sqlsession;

	// 공연 추가
	public void bmAdd(ProductVo vo) {

		sqlsession.insert("bm.bmAdd", vo);
	}

	// 공연 리스트
	public List<ProductVo> getBmList() {

		return sqlsession.selectList("bm.getList");
	}

	// 공연 선택
	public ProductVo getBm(int prodNo) {
		
		return sqlsession.selectOne("bm.getBm", prodNo);
	}

	// 공연 수정
	public void bmModify(ProductVo vo) {
		
		sqlsession.update("bm.moodify", vo);
	}
	
	//공연 삭제
	public void bmDelete(ProductVo vo) {
		
		sqlsession.delete("bm.delete", vo);
	}
	

}
