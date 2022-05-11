package kr.smhrd.myapp;

import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.service.RentalService;
import kr.smhrd.service.ReturnService;
import kr.smhrd.service.RfidBackService;
import kr.smhrd.service.RfidFrontService;
import kr.smhrd.service.UmbrellaService;

@Controller
public class RetrunController {
	@Autowired
	private ReturnService returnService;
	
	@Autowired
	private RentalService rentalService;
	
	@Autowired
	private RfidFrontService rfService;
	
	@Autowired
	private RfidBackService rbService;
	
	@Autowired
	private UmbrellaService uService;
	
	
	@RequestMapping("/frontRfid")
	public void frontRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{
			if(rfService.selectDiff() < 10 && rfService.selectDiff() != 0 && rfService.selectCheck().equals(uid)){
				rentalService.rental2(uid, umbbox_seq); // 대여절차(최종)으로
			}else {
				returnService.return1(uid, umbbox_seq); // 반납절차(시작)으로
			}			
	}
	

	@RequestMapping("/backRfid")
	public void backRfid(@RequestParam(value="uid") String uid, @RequestParam(value="umbbox_seq") String umbbox_seq) throws NoRouteToHostException, ConnectException, IOException, Exception{		
			if(rbService.selectDiff() < 10 && rbService.selectDiff() != 0 && rbService.selectCheck().equals(uid)){
				returnService.return2(uid, umbbox_seq); // 반납절차(최종)으로
			}else {
				rentalService.rental1(uid, umbbox_seq); // 대여절차(시작)으로
			}
	}
}
