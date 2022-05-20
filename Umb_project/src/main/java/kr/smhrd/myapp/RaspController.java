package kr.smhrd.myapp;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.domain.Umbbox;
import kr.smhrd.service.RaspService;
import kr.smhrd.service.RentService;
import kr.smhrd.service.RentalService;
import kr.smhrd.service.ReturnService;
import kr.smhrd.service.RfidBackService;
import kr.smhrd.service.RfidFrontService;
import kr.smhrd.service.UmbboxService;
import kr.smhrd.service.UmbrellaService;

@Controller
public class RaspController {
	@Autowired
	private ReturnService returnService;
	
	@Autowired
	private RentalService rentalService;
	
	@Autowired
	private RfidFrontService rfidFrontService;
	
	@Autowired
	private RfidBackService rfidBackService;
	
	@Autowired
	private UmbboxService umbboxServive;
	
	@Autowired
	private RaspService raspService;
	
	@Autowired
	private RentService rentService;
	
	@Autowired
	private UmbrellaService umbrellaService;
	
	
	@RequestMapping("/frontRfid")
	public String frontRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
	
			if(rentService.selectRentUmb(umbrellaService.selectUmbSeq(uid)) == 0){ // 우산의 대여/반납상태 확인
				System.out.println("대여절차(최종)으로");
				rentalService.rental2(uid, umbbox_seq); // 대여절차(최종)으로
				return raspService.Rantal2();
			}else {
				System.out.println("반납절차(시작)으로");
				returnService.return1(uid, umbbox_seq); // 반납절차(시작)으로
				return raspService.Return1();
			}
	}
	

	@RequestMapping("/backRfid")
	public String backRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{		
	
			if(rentService.selectRentUmb(umbrellaService.selectUmbSeq(uid)) > 0){ // 우산의 대여/반납상태 확인
				System.out.println("반납절차(최종)으로");
				boolean cancel = returnService.return2(uid, umbbox_seq); // 반납절차(최종)으로
				if(cancel) {
					return raspService.Cancel();					
				}
				return raspService.Return2();
			}else {
				System.out.println("대여절차(시작)으로");
				rentalService.rental1(uid, umbbox_seq); // 대여절차(시작)으로
				return raspService.Rantal1();
			}

	}
	
	// 우산대여요청
	@RequestMapping("/Android/Rent")
	public String umbRent(@RequestParam(value="qrNum") String qrNum, @RequestParam(value="userId") String userId) {
			System.out.println("안드로이드 : 대여 요청");
			System.out.println("대여 URL : " + qrNum);
			System.out.println("대여 User : " + userId);

			Umbbox vo = new Umbbox(); // 보관함 VO 생성
			vo.setUbox_id(userId);
			vo.setUbox_seq(1);
			umbboxServive.updateUboxID(vo); // 보관함에 사용자 아이디 업데이트
			
			return raspService.ledGreen();
			// Rentservice.insertRent(null);
	}

	
}
