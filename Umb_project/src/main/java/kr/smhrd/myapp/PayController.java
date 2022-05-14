package kr.smhrd.myapp;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.service.PayService;

@Controller
public class PayController {
	

	@Autowired
	private PayService service;
	
	@RequestMapping("/success") // 카드 등록 페이지
	public String success(@RequestParam(value="customerKey") String customerKey, @RequestParam(value="authKey") String authKey) {
		service.success(customerKey, authKey);
		return "success";
	}
	
	// 분실 신고 시, 자동으로 결제 진행하고 대여내역 정리
	@RequestMapping("/auto")
	public String auto(@RequestParam(value="rent_id") String rent_id, @RequestParam(value="rent_seq") String rent_seq) {
		service.auto(rent_id, 8000, rent_seq);
		return "auto";
	}
}
