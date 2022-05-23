package kr.smhrd.myapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// 관리자 홈 이동
		@RequestMapping("/Admin/home")
		public String home() {
			return "home";
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
	
	// 로그아웃
	@RequestMapping("/Admin/Logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Login";
	}
/* 회원관리 */
	// 회원리스트 페이지
	@RequestMapping("/Admin/userTable")
	public String UserTable() {
		return "userTable";
	}
	
	
	// 단일 회원 페이지
	@RequestMapping("/Admin/userDetails")
	public String userDetails(Model model, @RequestParam(value="user_id") String user_id) {
		model.addAttribute("user_id", user_id);
		return "userDetails";
	}

	// 관리자 등록 페이지
	@RequestMapping("/Admin/managerRegister")
	public String managerRegister() {
		return "managerRegister";
	}
	
/* 우산관리 */
	// 우산리스트 페이지
	@RequestMapping("/Admin/umTable")
	public String umTable() {
		return "umTable";
	}
	
	// 단일 우산 페이지
	@RequestMapping("/Admin/umDetails")
	public String umbDetails(Model model, @RequestParam(value="umb_seq") int umb_seq) {
		model.addAttribute("umb_seq", umb_seq);
		return "umDetails";
	}
		
/* 대여관리 */	
	// 대여관리 페이지
	@RequestMapping("/Admin/rental")
	public String rental() {
		return "rental";
	}
	
/* 보관함 관련 */
	// 단일 보관함 페이지
	@RequestMapping("/Admin/umBoxDetails")
	public String uboxDetails(Model model, @RequestParam(value="ubox_seq") int ubox_seq) {
		model.addAttribute("ubox_seq", ubox_seq);
		return "umBoxDetails";
	}
		
	
/* QnA관리 */
	// QnA 페이지
	@RequestMapping("/Admin/qna")
	public String qna() {
		return "qna";
	}

	

/* 달력관리 */	
	// 달력 페이지
	@RequestMapping("/Admin/calendar")
	public String calendar() {
		return "calendar";
	}
	

	// 보관함리스트 페이지
	@RequestMapping("/Admin/umBoxTable")
	public String BoxTable(User vo, HttpSession session) {
		return "umBoxTable";
	}
	
	// 
	@RequestMapping("/Admin/User")
	public String Home(User vo, HttpSession session) {
		return "Home";
	}
	

}
