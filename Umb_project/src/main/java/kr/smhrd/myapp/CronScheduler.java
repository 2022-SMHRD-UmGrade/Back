package kr.smhrd.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.smhrd.domain.Umbbox;
import kr.smhrd.service.RaspService;
import kr.smhrd.service.UmbboxService;

@Component
public class CronScheduler {
	

	@Autowired
	private UmbboxService umbboxService;
	

	@Scheduled(cron = "0/10 * * * * *") // 10초마다 자동실행 (서버가 열린 상태면 계속 실행)
	public void cronScheduler() {
		List<Umbbox> list = umbboxService.selectUnusedUbox(); // 45초 이상 사용되지 않는 (사용자가 등록된) 보관함 조회
		
		
		for(int i=0; i<list.size(); i++) {
			umbboxService.updateUboxID2(list.get(i).getUbox_seq()); // 해당되는 보관함 사용자 초기화
			System.out.println("초기화된 보관함 : " + list.get(i).getUbox_seq());
		}
	}

}
