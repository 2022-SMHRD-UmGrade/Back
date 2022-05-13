package kr.smhrd.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Comment;
import kr.smhrd.domain.Qna;
import kr.smhrd.domain.Reply;
import kr.smhrd.domain.Umbbox;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;
import kr.smhrd.service.CommentService;
import kr.smhrd.service.QnaService;
import kr.smhrd.service.ReplyService;
import kr.smhrd.service.UmbboxService;
import kr.smhrd.service.UserService;

@RestController
public class AndroidController {

	@Autowired
	private UserService User_service;

	@Autowired
	private UmbboxService Ubox_Service;
	
	@Autowired
	private BoardService Board_service;

	// 유저 회원 가입
	@RequestMapping(value = "/Android/Join", method = RequestMethod.POST)
	public String Join(User user) {
		User_service.userJoin(user);
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
		User info = User_service.userLogin(user);

		return info;
	}

	// 유저 계정 정보 수정
	@RequestMapping(value = "/Android/Update", method = RequestMethod.POST)
	public String userInfoUpdate(User user) {
		User_service.userInfoUpdate(user);
		System.out.println(user);
		System.out.println(user.getUser_nick());
		System.out.println(user.getUser_email());
		System.out.println(user.getUser_addr());
		System.out.println("계정정보 수정완료!");

		return "success";

	}

	// 우산대여요청
	@RequestMapping(value = "/Android/Rent", method = RequestMethod.POST)
	public void umbRent(HttpServletRequest httpServletRequest) {
		System.out.println("안드로이드 : 대여 요청");
		String get_url = httpServletRequest.getParameter("qrNum");
		String get_userId = httpServletRequest.getParameter("userId");
		System.out.println("대여 URL : " + get_url);
		System.out.println("대여 User : " + get_userId);

		Umbbox vo = new Umbbox(); // 보관함 VO 생성
		vo.setUbox_id("1234");
		vo.setUbox_seq(1);
		Ubox_Service.updateUboxID(vo); // 보관함에 사용자 아이디 업데이트
		// Rentservice.insertRent(null);
	}
	
	// 공유 게시판 게시글 작성
	@RequestMapping(value = "/Android/InsertContent", method = RequestMethod.POST)
	public String insertBoard(Board vo) {
		Board_service.insertBoard(vo);
		System.out.println("게시글 등록 성공!");
		System.out.println(vo.getArticle_title());
		System.out.println(vo.getArticle_content());
		
		return "success";
	}

}
