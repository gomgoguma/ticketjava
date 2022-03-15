package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NotiDataVo;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.SelseatVo;

@Repository
public class SelseatDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertPre(SelseatVo selseatVo) {
		sqlSession.insert("selseat.insertPre", selseatVo);
		
	}

	public List<SelseatVo> selectSelList(int[] selseatNo) {
		return sqlSession.selectList("selseat.selectSelList", selseatNo);
	}
	
	

	
	
	public List<Integer> selectTimeOver() {
		return sqlSession.selectList("selseat.selectTimeOver");
	}

	public List<SelseatVo> selectOccupy(ReservationVo reservationVo) {
		return sqlSession.selectList("selseat.selectOccupy", reservationVo);
	}

	public void updateDcPay(SelseatVo selseatVo) {
		sqlSession.update("selseat.updateDcPay", selseatVo);
		
	}

	public void updateStatus(int rezNo) {
		sqlSession.update("selseat.updateStatus", rezNo);
	}
	
	
	
	public NotiDataVo selectByNo(int selseatNo) {
		return sqlSession.selectOne("selseat.selectByNo", selseatNo);
	}

	public int selectSelseatCount(NotiDataVo notiDataVo) {
		return sqlSession.selectOne("selseat.selectSelseatCount", notiDataVo);
	}
}
