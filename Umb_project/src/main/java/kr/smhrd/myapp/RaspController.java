package kr.smhrd.myapp;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.service.RaspService;
import kr.smhrd.service.RentalService;
import kr.smhrd.service.ReturnService;
import kr.smhrd.service.RfidBackService;
import kr.smhrd.service.RfidFrontService;
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
	private RaspService raspService;
	
	
	@RequestMapping("/frontRfid")
	public String frontRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
	
			if(rfidFrontService.selectDiff() < 6 && rfidFrontService.selectCheck().equals(uid)){
				System.out.println("대여절차(최종)으로");
				rentalService.rental2(uid, umbbox_seq); // 대여절차(최종)으로
				return raspService.soleON();
			}else {
				System.out.println("반납절차(시작)으로");
				returnService.return1(uid, umbbox_seq); // 반납절차(시작)으로
				return raspService.soleOFF();
			}
	}
	

	@RequestMapping("/backRfid")
	public String backRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{		
	
			if(rfidBackService.selectDiff() < 6 && rfidBackService.selectCheck().equals(uid)){
				System.out.println("반납절차(최종)으로");
				boolean cancel = returnService.return2(uid, umbbox_seq); // 반납절차(최종)으로
				return raspService.soleON();
			}else {
				System.out.println("대여절차(시작)으로");
				rentalService.rental1(uid, umbbox_seq); // 대여절차(시작)으로
				return raspService.soleOFF();
			}

	}
}
