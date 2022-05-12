package kr.smhrd.service;

import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.mapper.UserMapper;

@Service
public class PayService {

	@Autowired
	private JsonService jsonService;
	
	@Autowired
	private UserService userService;
	
	public void success(String customerKey, String authKey) {
		HttpResponse<String> response = jsonService.success(customerKey, authKey);
		Map<String, String> map = jsonService.mapJson(response.body());
		HashMap<String, String> bk = new HashMap<>();
		bk.put("customer_key", customerKey);
		bk.put("billing_key", map.get("billingKey"));
		userService.updateUserBK(bk);
		System.out.println(map.get("billingKey"));
	}
	
	public void auto(String user_id, int amount, String order_id) {
		String bk = userService.selectUserBK(user_id);
		HttpResponse<String> response = jsonService.auto(bk, user_id, amount, order_id);
		Map<String, String> map = jsonService.mapJson(response.body());
		System.out.println(map.get("status"));
	}
	
}
