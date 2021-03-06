package kr.smhrd.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Comment;
import kr.smhrd.domain.Qna;
import kr.smhrd.domain.Rent;
import kr.smhrd.domain.Reply;
import kr.smhrd.domain.Umbbox;
import kr.smhrd.domain.Umbrella;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;
import kr.smhrd.service.CommentService;
import kr.smhrd.service.QnaService;
import kr.smhrd.service.RentService;
import kr.smhrd.service.ReplyService;
import kr.smhrd.service.UmbboxService;
import kr.smhrd.service.UmbrellaService;
import kr.smhrd.service.UserService;

@RestController
public class RController {

	@Autowired
	private UserService userService;

	@Autowired
	private RentService rentService;

	@Autowired
	private UmbrellaService umbrellaService;

	@Autowired
	private UmbboxService UmbboxService;

	@Autowired
	private BoardService boardService;

	@Autowired
	private CommentService commentService;

	@Autowired
	private ReplyService replyService;

	@Autowired
	private QnaService qnaService;

	/* 회원 */
	// 회원 리스트 요청
	@RequestMapping("/userList.do")
	public List<User> user() {
		System.out.println("회원 리스트 요청");
		List<User> list = userService.selectUser();
		return list;
	}

	// 단일 회원 정보 요청
	@RequestMapping(value = "/userOne.do")
	public User userOne(@RequestParam(value = "user_id") String user_id) {
		System.out.println("받은 user_id : " + user_id);
		System.out.println("단일 회원 정보 요청");
		User list = userService.userOne(user_id);
		System.out.println(list.getUser_id());
		System.out.println(list.getUser_nick());
		System.out.println(list.getUser_phone());

		return list;
	}
	
	// 회원 삭제 요청
		@RequestMapping("/userDel.do")
		public String userDel(@RequestParam(value = "user_id") String user_id) {
			System.out.println("우산 삭제 요청");
			System.out.println("삭제 아이디 : "+user_id);
			userService.userDel(user_id);
			return "asdf";
		}
		
	// 회원 정보 수정 요청
		@RequestMapping("/userUpdate.do")
		public void userUpdate(User vo) {
			System.out.println("회원정보 수정 요청");
			System.out.println(vo.getUser_id());
			System.out.println(vo.getUser_type());
			System.out.println(vo.getUser_status());
			
			userService.userInfoUpdate2(vo);
		}
	

	// 대여 리스트 요청
	@RequestMapping("/rentList.do")
	public List<Rent> Rent(Model model) {
		System.out.println("우산 대여 리스트 요청");
		List<Rent> list = rentService.selectRent();
		return list;
	}

//	// 우산 추가 요청 - 미완 -
//	@RequestMapping("/umbInsert.do")
//	public void umbInsert(Umbrella vo) {
//		System.out.println("우산 추가 요청");
//		umbrellaService.insertUmb(vo);
//	}

/* 우산  */
	// 우산 리스트 요청
	@RequestMapping("/umbList.do")
	public List<Umbrella> umb() {
		System.out.println("우산 리스트 요청");
		List<Umbrella> list = umbrellaService.selectUmb();
		return list;
	}
	
	// 우산 정보 수정 요청
	@RequestMapping("/umbUpdate.do")
	public void umbUpdate(Umbrella vo) {
		System.out.println("우산정보 수정 요청");
		System.out.println(vo.getUmb_seq());
		System.out.println(vo.getUmb_status());
		System.out.println(vo.getUmb_broken());
		
		umbrellaService.updateUmb(vo);
	}
	
	// 단일 우산 요청
	@RequestMapping("/umbOne.do")
	public Umbrella umbOne(@RequestParam(value = "umb_seq") int umb_seq) {
		System.out.println("단일 우산 요청");
		Umbrella umb = umbrellaService.selectOneUmbrella(umb_seq);
		return umb;
	}
	
	// 우산 삭제 요청
	@RequestMapping("/umbDel.do")
	public void umbDel(@RequestParam(value = "umb_seq") int umb_seq) {
		System.out.println("우산 삭제 요청");
		umbrellaService.deleteUmb(umb_seq);
	}
	
/* 우산 보관함 */
	// 보관함 리스트 요청
		@RequestMapping("/uboxList.do")
		public List<Umbbox> uboxList() {
			System.out.println("보관함 리스트 요청");
			List<Umbbox> list = UmbboxService.selectUbox();
			return list;
		}
	// 단일 보관함 리스트 요청
		@RequestMapping("/uboxOne.do")
		public Umbbox uboxOne(@RequestParam(value = "ubox_seq") int ubox_seq) {
			System.out.println("보관함 리스트 요청");
			Umbbox u = UmbboxService.selectOneUbox(ubox_seq);
			return u;
		}
		// 보관함 삭제 요청
		@RequestMapping("/uboxDel.do")
		public void umboxDel(@RequestParam(value = "ubox_seq") int ubox_seq) {
			System.out.println("보관함 삭제 요청");
			UmbboxService.deleteUbox(ubox_seq);
		}
		
		// 보관함 정보 수정 요청
		@RequestMapping("/uboxUpdate.do")
		public void uboxUpdate(Umbbox vo) {
			System.out.println("보관함정보 수정 요청");
			System.out.println(vo.getUbox_seq());
			System.out.println(vo.getUbox_status());
			System.out.println(vo.getUbox_loc());
			System.out.println(vo.getUbox_qty());
			
			UmbboxService.webUbox(vo);
		}
	

	/* 커뮤니티 게시판 */
	// 게시판 게시글 작성
	@RequestMapping(value = "/BoardInsert.do")
	public String insertBoard(Board vo) {
		boardService.insertBoard(vo);
		System.out.println("게시글 등록 성공!");
		return "success";
	}

	// 게시글 리스트 요청
	@RequestMapping(value = "/BoardList.do")
	public List<Board> selectBoard() {
		System.out.println("게시글 리스트 요청");
		List<Board> list = boardService.selectBoard();
		return list;
	}

	// 단일 게시글 정보 요청
	@RequestMapping(value = "/BoardOne.do")
	public Board selectOneBoard(@RequestParam(value = "article_seq") int article_seq) {
		System.out.println("단일 게시글 요청");
		Board list = boardService.selectOneBoard(article_seq);
		return list;
	}

	// 게시글 댓글 작성
	@RequestMapping(value = "/InsertCmt.do")
	public String insertCmt(Comment vo) {
		System.out.println("댓글 추가");
		commentService.insertCmt(vo);
		return "comment insert success!";
	}

	// 게시글 별 댓글 리스트 요청
	@RequestMapping(value = "/BoardComment.do")
	public List<Comment> selectListCmt(@RequestParam(value = ""
			+ "") int article_seq) {
		System.out.println("게시글 별 댓글 리스트 요청");
		List<Comment> list = commentService.selectListCmt(article_seq);
		return list;
	}

	// 게시글 수정
	@RequestMapping(value = "/BoardUpdate.do")
	public void updateBoard(Board vo) {
		System.out.println("게시글 별 댓글 리스트 요청");
		boardService.updateBoard(vo);
	}

	// 게시판 게시글 조회수 증가
	@RequestMapping(value = "/Increment.do")
	public void updateBoardCnt(@RequestParam("article_seq") int article_seq) {
		boardService.updateBoardCnt(article_seq);
		System.out.println("게시글 조회 증가");
	}

	// 게시판 게시글 삭제
	@RequestMapping(value = "/BoardDelete.do")
	public String deleteBoard(int article_seq) {
		boardService.deleteBoard(article_seq);
		System.out.println("게시글 삭제!");

		return "deleteSuccess";
	}

	// 게시글 별 댓글 수정
	@RequestMapping(value = "/CommentUpdate.do")
	public void updateCmt(Comment vo) {
		System.out.println("선택한 게시글 댓글 수정");
		commentService.updateCmt(vo);
	}

	// 게시글 별 댓글 좋아요 수 증가
	@RequestMapping(value = "/CommentLikse.do")
	public void updateCmtLikes(@RequestParam(value = "cmt_seq") int cmt_seq) {
		System.out.println("선택한 게시글 댓글 좋아요 수 증가");
		commentService.updateCmtLikes(cmt_seq);
	}

	// 게시글 별 댓글 삭제
	@RequestMapping(value = "/CommentDelete.do")
	public void deleteCmt(int cmt_seq) {
		System.out.println("선택한 댓글 삭제");
		commentService.deleteCmt(cmt_seq);
	}
	
/* 대여 관련 */
	// 대여 리스트 요청
		@RequestMapping(value = "/RentalList.do")
		public List<Rent> RentalList() {
			System.out.println("대여 리스트 요청");
			List<Rent> list = rentService.selectRent();
			return list;
		}
	// 대여 삭제
		@RequestMapping(value = "/rentalDel.do")
		public void rentalDel(@RequestParam(value = "rent_seq") int rent_seq) {
			System.out.println(rent_seq+"번 대여 삭제");
			rentService.deleteRent(rent_seq);
		}

	/* Qna 게시판 */
	// QnA 리스트 요청
	@RequestMapping(value = "/QnaList.do")
	public List<Qna> selectQna() {
		System.out.println("Qna 리스트 요청");
		List<Qna> list = qnaService.selectQna();
		return list;
	}

	// 단일 QnA 요청
	@RequestMapping(value = "/QnaOne.do")
	public Qna selectOneQna(@RequestParam(value = "qna_seq") int qna_seq) {
		System.out.println("Qna 리스트 요청");
		Qna list = qnaService.selectOneQna(qna_seq);
		return list;
	}

	// QnA 별 댓글 리스트 요청
	@RequestMapping(value = "/QnaReply.do")
	public List<Reply> selectListReply(@RequestParam(value = "qna_seq") int qna_seq) {
		System.out.println("Qna 별 댓글 리스트 요청");
		List<Reply> list = replyService.selectListReply(qna_seq);
		return list;
	}

	/*
	 * @RequestMapping("/umbUpdate.do") public void umbUp(int umb_seq) {
	 * umbrellaService.updateUmbCheck(umb_seq); }
	 */

//	@RequestMapping("/selectRt.do")
//	public int selectRt(int rent_seq) {
//		return rentService.selectRentTime(rent_seq);
//	}

}
