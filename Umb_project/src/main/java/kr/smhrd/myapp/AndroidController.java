package kr.smhrd.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Comment;
import kr.smhrd.domain.Qna;
import kr.smhrd.domain.Reply;
import kr.smhrd.domain.Umbbox;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;
import kr.smhrd.service.CommentService;
import kr.smhrd.service.QnaService;
import kr.smhrd.service.RaspService;
import kr.smhrd.service.ReplyService;
import kr.smhrd.service.UmbboxService;
import kr.smhrd.service.UserService;

@RestController
public class AndroidController {

	@Autowired
	private UserService userService;

	@Autowired
	private UmbboxService uboxService;
	
	@Autowired
	private RaspService raspService;
	
	@Autowired
	private BoardService boardService;

	// 유저 회원 가입
	@RequestMapping(value = "/Android/Join", method = RequestMethod.POST)
	public String Join(User user) {
		userService.userJoin(user);
		System.out.println(user.getUser_id());
		System.out.println(user.getUser_pw());
		System.out.println(user.getUser_name());
		System.out.println(user.getUser_nick());
		System.out.println(user.getUser_email());
		System.out.println(user.getUser_phone());
		System.out.println(user.getUser_addr());
		System.out.println("회원가입 성공!");

		return "success";
	}

	// 유저로그인
	@RequestMapping(value = "/Android/Login")
	public User userLogin(User user) {
		System.out.println("안드로이드 : 로그인 접근");
		User info = userService.userLogin(user);

		return info;
	}

	// 유저 계정 정보 수정
	@RequestMapping(value = "/Android/Update", method = RequestMethod.POST)
	public String userInfoUpdate(User user) {
		userService.userInfoUpdate(user);
		System.out.println(user);
		System.out.println(user.getUser_nick());
		System.out.println(user.getUser_email());
		System.out.println(user.getUser_addr());
		System.out.println("계정정보 수정완료!");

		return "success";

	}

}
