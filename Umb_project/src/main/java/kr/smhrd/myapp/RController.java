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
import kr.smhrd.domain.Umbrella;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;
import kr.smhrd.service.CommentService;
import kr.smhrd.service.QnaService;
import kr.smhrd.service.RentService;
import kr.smhrd.service.ReplyService;
import kr.smhrd.service.ReturnService;
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
	private BoardService boardService;

	@Autowired
	private CommentService commentService;

	@Autowired
	private ReplyService replyService;

	@Autowired
	private QnaService qnaService;

	// 회원 리스트 요청
	@RequestMapping("/userList.do")
	public List<User> user() {
		System.out.println("회원 리스트 요청");
		List<User> list = userService.selectUser();
		return list;
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

	// 우산 리스트 요청
	@RequestMapping("/umbList.do")
	public List<Umbrella> umb() {
		System.out.println("우산 리스트 요청");
		List<Umbrella> list = umbrellaService.selectUmb();
		return list;
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

	// 게시글 별 댓글 리스트 요청
	@RequestMapping(value = "/BoardComment.do")
	public List<Comment> selectListCmt(@RequestParam(value = "article_seq") int article_seq) {
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
	
// 안드로이드에서 하고 있는 중 Start
	// 게시판 게시글 조회수 증가 
//	@RequestMapping(value = "/Increment.do")
//	public void updateBoardCnt(@RequestParam("article_seq") int article_seq) {
//		boardService.updateBoardCnt(article_seq);
//		System.out.println("게시글 조회 증가");
//	}

	// 게시판 게시글 삭제
//	@RequestMapping(value = "/BoardDelete.do")
//	public String deleteBoard(int article_seq) {
//		boardService.deleteBoard(article_seq);
//		System.out.println("게시글 삭제!");
//
//		return "deleteSuccess";
//	}
// end

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

	@RequestMapping("/umbUpdate.do")
	public void umbUp(int umb_seq) {
		umbrellaService.updateUmbCheck(umb_seq);
	}

//	@RequestMapping("/selectRt.do")
//	public int selectRt(int rent_seq) {
//		return rentService.selectRentTime(rent_seq);
//	}

}
