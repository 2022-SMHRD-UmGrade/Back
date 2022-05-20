package kr.smhrd.service;

import org.springframework.stereotype.Service;

@Service
public class RaspService {
	
	
	String ip = "172.30.1.22";
	
		// 대여 절차 1
	   public String Rantal1() {
	       return "redirect:http://"+ip+":8082/Rental1";
	   }
	   
	   // 대여 절차 2
	   public String Rantal2() {
	       return "redirect:http://"+ip+":8082/Rental2";
	   }
	   
	   // 반납 절차 1
	   public String Return1() {
	       return "redirect:http://"+ip+":8082/Return1";
	   }
	   
	   // 반납 절차 2
	   public String Return2() {
	       return "redirect:http://"+ip+":8082/Return2";
	   }
	   
	   // 대여 취소
	   public String Cancel() {
	       return "redirect:http://"+ip+":8082/Cancel";
	   }
	
	
	   // 잠금 풀린 상태
	   public String soleON() {
		    return "redirect:http://"+ip+":8082/soleON";
	   }
		
		// 잠금 상태
	   public String soleOFF() {
		     return "redirect:http://"+ip+":8082/soleOFF";
	   }
		
		// fan 가동
		public String fanON() {
		     return "redirect:http://"+ip+":8082/fanON";
		}
		
		// fan 가동 중지
		public String fanOFF() {
		     return "redirect:http://"+ip+":8082/fanOFF";
		}
		
		// led 초록불 점등
		public String ledGreen() {
			System.out.println("초록불 신호 보내기");
		     return "redirect:http://"+ip+":8082/ledGreen";
		}
		
		// led 빨간불 점등
		public String ledRed() {
		     return "redirect:http://"+ip+":8082/ledRed";
		}
		
		// led 소등
		public String ledOFF() {
			 return "redirect:http://"+ip+":8082/ledOFF";
		}
	
	
}
