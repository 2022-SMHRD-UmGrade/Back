package kr.smhrd.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.domain.User;
import kr.smhrd.mapper.UserMapper;

@Controller
public class AdminController {
	@Autowired
	private UserMapper mapper;
	
	// 관리자 로그인 페이지 이동
	@RequestMapping("/Admin/Login")
	public String login() {
		return "login";
	}
	
	// 로그인 판별 , 세션 생성
	@RequestMapping("/Admin/LoginCheck")
	public String login(User vo, HttpSession session) {
		System.out.println(vo.getUser_id());
		
		User login = mapper.userLogin(vo);
		
		if(login != null) {
			session.setAttribute("login", login);
			System.out.println("로그인세션생성!");
			return "home";
		}
		else {
			System.out.println("로그인실패");
		}
		return "Login";
	}
	
	@RequestMapping("/Admin/Logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Login";
	}
	
	@RequestMapping("/Admin/userTable")
	public String UserTable() {
		return "userTable";
	}
	
	@RequestMapping("/Admin/umTable")
	public String umTable() {
		return "umTable";
	}
	
	
	@RequestMapping("/Admin/User")
	public String Home(User vo, HttpSession session) {
		return "Home";
	}
	
	@RequestMapping("/Admin/boxTable")
	public String BoxTable(User vo, HttpSession session) {
		return "umBoxTable";
	}
	

}
