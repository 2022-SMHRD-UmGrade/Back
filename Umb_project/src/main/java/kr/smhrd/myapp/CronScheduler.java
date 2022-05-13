package kr.smhrd.myapp;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class CronScheduler {
	

	
	@Scheduled(cron = "0/30 * * * * *")
	public void cronScheduler() {
		System.out.println("30초마다 실행 중");
	}

}
