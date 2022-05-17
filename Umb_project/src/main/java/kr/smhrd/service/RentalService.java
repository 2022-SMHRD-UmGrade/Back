package kr.smhrd.service;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Rent;
import kr.smhrd.domain.Rfid;

@Service
public class RentalService {
	
//	@Autowired
//	private RaspService raspService;
	
	@Autowired
	private RfidBackService rfidBackService;
	
	@Autowired
	private UmbboxService umbboxService;
	
	@Autowired
	private UmbrellaService umbrellaService;
	
	@Autowired
	private RentService rentService;
	
	@Autowired
	private RfidFrontService rfidFrontService;
	
	// 대여 시작
	public void rental1(String uid,String umbbox_seq){
	if(umbrellaService.isExistUmbBroken(uid) && umbboxService.isExistUboxID(Integer.parseInt(umbbox_seq))) { // 우산이 파손되었는지 + 보관함의 사용자 아이디가 있는지 확인
			Rfid vo = new Rfid();
			vo.setRfid_ubox(Integer.parseInt(umbbox_seq));
			vo.setRfid_uid(uid);
			rfidBackService.insertLog(vo); // 로그입력(+ 우산 uid, 우산보관함 번호)
			System.out.println("로그입력: "+uid);
			//raspService.getRequestApiGet("http://172.30.1.49:8082/soleOFF");	// 솔레노이드 해제
			// 이미 보관함에 유저아이디는 입력된 상태로 (앱에서 진행완료) 따로 업데이트 시켜줄 필요가 없다.
		}
	}
	
	// 대여 중간~ 최종
	public void rental2(String uid, String umbbox_seq){
		Rfid rvo = new Rfid();
		rvo.setRfid_ubox(Integer.parseInt(umbbox_seq));
		rvo.setRfid_uid(uid);
		rfidFrontService.insertLog(rvo); // 로그입력(+ 우산 uid, 우산보관함 번호)
		System.out.println("로그입력(f) "+uid);
		//raspService.getRequestApiGet("http://172.30.1.49:8082/soleON");	// 솔레노이드 잠금
		Rent vo = new Rent();
		vo.setRent_id(umbboxService.selectUboxID(Integer.parseInt(umbbox_seq))); // 렌트 vo에 대여자 id 입력
		System.out.println(umbboxService.selectUboxID(Integer.parseInt(umbbox_seq)));
		vo.setUmb_seq(umbrellaService.selectUmbSeq(uid));	// 렌트 vo에 대여우산 시퀀스 입력
		System.out.println(umbrellaService.selectUmbSeq(uid));
		rentService.insertRent(vo);												// 렌트 vo Insert
		System.out.println("대여자 id: "+vo.getRent_id());
		
		umbboxService.updateUboxID2(Integer.parseInt(umbbox_seq));	// 보관함 유저아이디 초기화
	}
}
