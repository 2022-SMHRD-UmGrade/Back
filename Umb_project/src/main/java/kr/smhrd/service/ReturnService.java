package kr.smhrd.service;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Rent;
import kr.smhrd.domain.Umbbox;
import kr.smhrd.mapper.RentMapper;
import kr.smhrd.mapper.RfidBackMapper;
import kr.smhrd.mapper.RfidFrontMapper;
import kr.smhrd.mapper.UmbboxMapper;
import kr.smhrd.mapper.UmbrellaMapper;
import kr.smhrd.mapper.UserMapper;

@Service
public class ReturnService {

	@Autowired
	private RaspService rpService;
	
	@Autowired
	private PayService pService;
	
	@Autowired
	private UmbboxMapper ubMapper;
	
	@Autowired
	private RentMapper rMapper;
	
	@Autowired
	private UserMapper uMapper;
	
	@Autowired
	private RfidBackMapper rbMapper;
	
	@Autowired
	private RfidFrontMapper rfMapper;
	
	// 우산 반납을 시작
	public void return1(String uid, String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
		rfMapper.insertLog(uid); 				// RFID 로그 입력
		Rent rvo = rMapper.selectOneRfid(uid); 	// 우산 uid로 렌트 VO 호출
		Umbbox bvo = new Umbbox(); 						// 보관함 VO 생성, updateUboxID(bvo)로 쓰기 위함
		bvo.setUbox_id(rvo.getRent_id()); 		// 보관함 VO에 사용자 ID 입력
		bvo.setUbox_seq(Integer.parseInt(umbbox_seq));		// 보관함 VO에 보관함 일련번호 입력
		rpService.getRequestApiGet("http://172.30.1.49:8082/soleOFF");	// 솔레노이드 해제
		ubMapper.updateUboxID(bvo); 			// 보관함 테이블에 사용자 아이디 업데이트
	}
	
	// 우산 반납을 마무리
	public void return2(String uid, String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
		rbMapper.insertLog(uid);				// RFID 로그 입력
		rpService.getRequestApiGet("http://172.30.1.49:8082/soleON");	// 솔레노이드 잠금
		Rent vo = rMapper.selectOneRfid(uid);	// 대여정보 갖고오기 (우산 rfid로)
		int time = rMapper.selectRentTime(vo.getRent_seq());	// 사용시간 추출
		int pay = (time!=0)?((time/24)+1)*700:0;				// 사용시간을 바탕으로 사용요금 계산
		HashMap<String, Object> pc = new HashMap<>();			// HashMap 호출, DB입력용
		pc.put("user_id", vo.getRent_id());						// map에 유저아이디 입력
		pc.put("amount", pay);									// map에 사용요금 입력
		if(uMapper.isExistUserPoint(pc)) {						// (조건) 포인트가 지불금액 이상인가?
			pc.replace("amount", -pay);							//  - 사용요금, 음수로 전환
			uMapper.updateUserPoint(pc);						//  - 사용요금만큼 포인트 차감
			vo.setPay_method("P");								// 결제방법, 포인트(P)로 입력
		}else {
			pService.auto(vo.getRent_id(), pay, Integer.toString(vo.getRent_seq())); // 카드결제 (아이디, 사용요금, 오더아이디)
			vo.setPay_method("C");									// 결제방법, 카드(C)로 입력
		}
		
		// 대여기록 수정
		vo.setPay_done("Y");									// 결제가 성공했으니 'Y'(yes)로 수정
		vo.setPay_amount(pay);								 	// 결제금액 수정
		rMapper.updateRentReturn(vo);							// 대여정보 수정
		
		// 보관함 사용자 초기화
		ubMapper.updateUboxID2(umbbox_seq);						// 보관함 초기화 (사용자 아이디 다시 디폴트값으로)
	}
}
