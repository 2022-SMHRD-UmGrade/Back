package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor //어노테이션 추가
@AllArgsConstructor
public class Coupon {

	private int cp_seq; // 쿠폰 일련번호
	private String cp_name; // 쿠폰 이름
	private String cp_date; // 쿠폰 유효기한
	private String cp_done; // 쿠폰 사용여부
	private String cp_user; // 쿠폰 소지자
	
}
