package kr.smhrd.service;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Rent;
import kr.smhrd.mapper.RentMapper;
import kr.smhrd.mapper.RfidBackMapper;
import kr.smhrd.mapper.RfidFrontMapper;
import kr.smhrd.mapper.UmbboxMapper;
import kr.smhrd.mapper.UmbrellaMapper;

@Service
public class RentalService {
	
	@Autowired
	private RaspService rpService;
	
	@Autowired
	private UmbboxMapper ubMapper;
	
	@Autowired
	private UmbrellaMapper urMapper;
	
	@Autowired
	private RentMapper rMapper;
	
	@Autowired
	private RfidBackMapper rbMapper;
	
	@Autowired
	private RfidFrontMapper rfMapper;
	
	// 대여 시작
	public void rental1(String uid, String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
		if(urMapper.isExistUmbBroken(uid) && ubMapper.isExistUboxID(Integer.parseInt(umbbox_seq))) { // 우산이 파손되었는지 + 보관함의 사용자 아이디가 있는지 확인
			rbMapper.insertLog(uid); 	// 로그 입력
			rpService.getRequestApiGet("http://172.30.1.49:8082/soleOFF");	// 솔레노이드 해제
			// 이미 보관함에 유저아이디는 입력된 상태로 (앱에서 진행완료) 따로 업데이트 시켜줄 필요가 없다.
		}
	}
	
	// 대여 중간~ 최종
	public void rental2(String uid, String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
		rfMapper.insertLog(uid);
		rpService.getRequestApiGet("http://172.30.1.49:8082/soleON");	// 솔레노이드 잠금
		Rent vo = null;
		vo.setRent_id(ubMapper.selectUboxID(Integer.parseInt(umbbox_seq))); // 렌트 vo에 대여자 id 입력
		vo.setUmb_seq(urMapper.selectUmbSeq(uid)); 							// 렌트 vo에 대여우산 시퀀스 입력
		rMapper.insertRent(vo);												// 렌트 vo Insert
		
		ubMapper.updateUboxID2(umbbox_seq);	// 보관함 유저아이디 초기화
	}
}
