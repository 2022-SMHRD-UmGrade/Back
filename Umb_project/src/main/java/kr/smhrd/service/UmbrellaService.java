package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Umbrella;
import kr.smhrd.mapper.UmbrellaMapper;

@Service
public class UmbrellaService {

	@Autowired
	private UmbrellaMapper mapper;
	
	public List<Umbrella> selectUmb(){
		List<Umbrella> list = mapper.selectUmb();
		return list;
	}
	
	// 우산 세부정보 조회
	public Umbrella selectOneUmbrella(int umb_seq) {
		return mapper.selectOneUmb(umb_seq);
	}

	// 우산 RFID로 우산 시퀀스 조회
	public int selectUmbSeq(String umb_rfid) {
		return mapper.selectUmbSeq(umb_rfid);
	}
	
	// 우산 RFID로 우산 타입 조회
	public String selectUmbType(String umb_rfid) {
		return mapper.selectUmbType(umb_rfid);
	}
	
	// 우산 RFID 조회 (조건 + 파손되지 않은 우산)
	public boolean isExistUmbBroken(String rfid) {
		return mapper.isExistUmbBroken(rfid);

	}
	
	// 우산 RFID 조회
	public boolean isExistUmb(String rfid) {
		return mapper.isExistUmb(rfid);
	}
	
	// 우산 삭제
	public void deleteUmb(int umb_seq) {
		mapper.deleteUmb(umb_seq);
	}
	
	// 우산 점검일자 수정
	public void updateUmbCheck(int umb_seq) {
		mapper.updateUmbCheck(umb_seq);
	}

	// 우산 Rfid 수정
	public void updateUmbRfid(Umbrella vo) {
		mapper.updateUmbRfid(vo);
	}
	
	// 우산 파손정보 수정
	public void updateUmbBroken(int umb_seq) {
		mapper.updateUmbBroken(umb_seq);
	}
	
	// 파손정보 수정(버튼으로 수정)
	public void updateUmbBroken2(String rent_id) {
		mapper.updateUmbBroken2(rent_id);
	}
	
	// 우산 대여정보 수정
	public void updateUmbStatus(Umbrella vo) {
		mapper.updateUmbStatus(vo);
	}
	
	public void insertUmb(Umbrella vo) {
		mapper.insertUmb(vo);
		
	}
	
	
	
	
}
