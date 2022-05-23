package kr.smhrd.myapp;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import kr.smhrd.domain.Rent;
import kr.smhrd.domain.Umbbox;
import kr.smhrd.domain.Umbrella;
import kr.smhrd.service.PayService;
import kr.smhrd.service.RaspService;
import kr.smhrd.service.RentService;
import kr.smhrd.service.UmbboxService;
import kr.smhrd.service.UmbrellaService;

@Component
public class CronScheduler {
	
	@Autowired
	private UmbboxService umbboxService;
	
	@Autowired
	private UmbrellaService umbrellaService;
	
	@Autowired
	private RentService rentService;
	
	@Autowired
	private PayService payService;
	
	@Autowired
	private RaspService raspService;

	@Scheduled(cron = "0/10 * * * * *") // 10초마다 자동실행 (서버가 열린 상태면 계속 실행)
	public void cronScheduler() {
		List<Umbbox> list = umbboxService.selectUnusedUbox(); // 45초 이상 사용되지 않는 (사용자가 등록된) 보관함 조회
		//System.out.println("10초마다 자동실행");

		
		for(int i=0; i<list.size(); i++) {
			umbboxService.updateUboxID2(list.get(i).getUbox_seq()); // 해당되는 보관함 사용자 초기화
			System.out.println("초기화된 보관함 : " + list.get(i).getUbox_seq());
			String uri = raspService.catch1();
			RestTemplate restTemplate = new RestTemplate();
			restTemplate.getForObject(uri, String.class);
		}
	}
	
	
	@Scheduled(cron = "0 0 0/1 * * *") // 1시간마다 자동실행 (서버가 열린 상태면 계속 실행)
	public void payScheduler() { // 미반납자 8000원 자동결제 후, 대여내역 정리
		List<Rent> list = rentService.selectNoReturn(); // 7일 이상 미반납된 우산 조회
		
		
		for(int i=0; i<list.size(); i++) {
			payService.auto(list.get(i).getRent_id(), 8000, Integer.toString(list.get(i).getRent_seq())); // 자동결제
			System.out.println("자동결제된 유저 : " + list.get(i).getRent_id());
		}
	}

}
