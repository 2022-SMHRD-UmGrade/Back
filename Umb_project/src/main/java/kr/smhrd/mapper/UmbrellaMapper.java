package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.smhrd.domain.Umbrella;


public interface UmbrellaMapper {

	// 우산 전체조회
	@Select("select * from t_umbrella")
	public List<Umbrella> selectUmb();
	
	// 우산 개별 정보 조회
	public Umbrella selectOneUmb(int umb_seq);
	
	// 우산 RFID로 우산 시퀀스 조회
	public int selectUmbSeq(String umb_rfid);
	
	// 우산 RFID 조회 (DB에 등록된 우리의 우산인지 확인)
	public boolean isExistUmb(String umb_rfid);
	
	// 우산 RFID 조회 (조건 + 파손되지 않은 우산)
	public boolean isExistUmbBroken(String umb_rfid);
	
	// 우산 추가
	public void insertUmb(Umbrella vo);
	
	// 대여정보 수정
	public void updateUmbStatus(Umbrella vo);
	
	// 파손정보 수정
	public void updateUmbBroken(int umb_seq);
	
	// 점검일자 수정
	public void updateUmbCheck(int umb_seq);
	
	// RFID UID 수정
	public void updateUmbRfid(Umbrella vo);
	
	// 우산 삭제
	public void deleteUmb(int umb_seq);
	
}
