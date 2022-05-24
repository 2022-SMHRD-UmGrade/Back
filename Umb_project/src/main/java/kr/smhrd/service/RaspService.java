package kr.smhrd.service;

import org.springframework.stereotype.Service;

@Service
public class RaspService {
	
	
	String ip = "192.168.43.87:8083";
	
		// 대여 절차 1
	   public String Rantal1() {
	       return "redirect:http://"+ip+"/Rental1";
	   }
	   
	   // 대여 절차 2
	   public String Rantal2() {
	       return "redirect:http://"+ip+"/Rental2";
	   }
	   
	   // 반납 절차 1
	   public String Return1() {
	       return "redirect:http://"+ip+"/Return1";
	   }
	   
	   // 반납 절차 2
	   public String Return2() {
	       return "redirect:http://"+ip+"/Return2";
	   }
	   
	   // 대여 취소
	   public String Cancel() {
	       return "redirect:http://"+ip+"/Cancel";
	   }
	
	
	   // 잠금 풀린 상태
	   public String soleON() {
		    return "redirect:http://"+ip+"/soleON";
	   }
		
		// 잠금 상태
	   public String soleOFF() {
		     return "redirect:http://"+ip+"/soleOFF";
	   }
		
		// fan 가동
		public String fanON() {
		     return "redirect:http://"+ip+"/fanON";
		}
		
		// fan 가동 중지
		public String fanOFF() {
		     return "redirect:http://"+ip+"/fanOFF";
		}
		
		// led 초록불 점등
		public String ledGreen() {
			System.out.println("초록불 신호 보내기");
		     return "redirect:http://"+ip+"/ledGreen";
		}
		
		// led 빨간불 점등
		public String ledRed() {
		     return "redirect:http://"+ip+"/ledRed";
		}
		
		// led 소등
		public String ledOFF() {
			 return "redirect:http://"+ip+"/ledOFF";
		}
		
		// 파손우산 대여불가
		public String warning_broken() {
			return "redirect:http://"+ip+"/Broken";
		}
		
		// 무단대여 불가
		public String warning_noQR() {
			return "redirect:http://"+ip+"/Warning";
		}
		
		// 예외상황
		public String catch1() {
			return "http://"+ip+"/Catch";
		}
	
	
}
