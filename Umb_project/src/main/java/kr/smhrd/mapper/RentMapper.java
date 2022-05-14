package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.smhrd.domain.Rent;


public interface RentMapper {

	@Select("select * from t_rent")
	public List<Rent> selectRent();
	
	// 개별 대여정보 조회
	public Rent selectOneRent(int rent_seq);
	
	// 현재 대여시간 조회 (반납 이전)
	public int selectRentTime(int rent_seq);
	
	// 대여시간 조회 (반납 이후)
	public int selectRentTime2(Rent vo);
	
	// RFID로 미반납 대여정보 추출
	public Rent selectOneRfid(String umb_rfid);
	
	// 7일 이상 미반납 대여정보 추출
	public List<Rent> selectNoReturn();
	
	// 우산이 이미 대여가 된 상태인지 확인 (1이면 대여된 상태, 0이면 아직 대여 안 된 상태)
	public int selectRentUmb(int umb_seq);
	
	// 대여정보 추가
	public void insertRent(Rent vo);
	
	// 반납 시 반납일자 + 결제내역 수정
	public void updateRentReturn(Rent vo);
	
	// 대여정보 삭제
	public void deleteRent(int rent_seq);
	
}
