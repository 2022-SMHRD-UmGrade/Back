package kr.smhrd.myapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping("/index")
	public String index() {
		
		return "/web/index";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		
		return "/web/faq";
	}
	
	@RequestMapping("/serviceinfo")
	public String serviceinfo() {
		
		return "/web/serviceinfo";
	}
	
	@RequestMapping("/privacy")
	public String privacy() {
		
		return "/web/privacy";
	}
	
	@RequestMapping("/terms")
	public String terms() {
		
		return "/web/terms";
	}
	
	
	
	
}
