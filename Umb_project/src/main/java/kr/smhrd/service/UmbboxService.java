package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Umbbox;
import kr.smhrd.mapper.UmbboxMapper;

@Service
public class UmbboxService {

	@Autowired
	private UmbboxMapper mapper;
	
	public List<Umbbox> selectUbox() {
		List<Umbbox> list = mapper.selectUbox();
		return list;
	}
	
	// 보관함 세부정보 조회
	public Umbbox selectOneUbox(int ubox_seq) {
		return mapper.selectOneUbox(ubox_seq);
	}
	
	// 보관함 상태 정보 조회
	public String selectUboxStatus(int ubox_seq) {
		return mapper.selectUboxStatus(ubox_seq);
	}
	
	// 보관함 유저 아이디 조회
	public String selectUboxID(int ubox_seq) {
		return mapper.selectUboxID(ubox_seq);
	}
		
	// 보관함에 사용자아이디가 있는지 확인
	public boolean isExistUboxID(int ubox_seq) {
		return mapper.isExistUboxID(ubox_seq);
	}
		
	// 보관함 삭제
	public void deleteUbox(int ubox_seq) {
		mapper.deleteUbox(ubox_seq);
	}
	
	// 보관함 추가
	public void insertUbox(Umbbox vo) {
		mapper.insertUbox(vo);
	}
		
	// 보관함 점검일자 수정
	public void updateUboxCheck(int ubox_seq) {
		mapper.updateUboxCheck(ubox_seq);
	}

	// 보관함 상태 수정
	public void updateUboxStatus(String status) {
		mapper.updateUboxStatus(status);
	}
	
	// 보관함 세부내용(설치장소명, 위도, 경도, 수량) 일괄 수정2
	public void webUbox(Umbbox vo) {
		mapper.webUbox(vo);
	}
	
	// 보관함 세부내용(설치장소명, 위도, 경도, 수량) 일괄 수정
	public void updateUbox(Umbbox vo) {
		mapper.updateUbox(vo);
	}
		
	// 보관함 관리자 수정
	public void updateUboxAdmin(Umbbox vo) {
		mapper.updateUboxAdmin(vo);
	}
	
	// 보관함 대여/반납신호 전송
	public void updateUboxID(Umbbox vo) {
		mapper.updateUboxID(vo);
	}
		
	// 보관함 대여취소신호/대여-반납 종료신호(보관함 사용자 아이디 초기화) 전송
	public void updateUboxID2(int ubox_seq) {
		mapper.updateUboxID2(ubox_seq);
	}
	
	// 사용자 아이디가 등록됐지만 45초 이상 사용되지 않는 보관함 조회
	public List<Umbbox> selectUnusedUbox(){
		return mapper.selectUnusedUbox();
	}
	
}
