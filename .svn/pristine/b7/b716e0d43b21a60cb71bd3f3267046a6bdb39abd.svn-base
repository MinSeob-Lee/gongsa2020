package com.sample.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sample.dto.NoticeDetailDto;
import com.sample.dto.NoticeInsideContentDto;
import com.sample.dto.UserInfoDto;
import com.sample.service.NoticeService;
import com.sample.service.QnaService;
import com.sample.service.ReserveService;
import com.sample.service.UserService;
import com.sample.utils.NumberUtil;
import com.sample.utils.StringUtil;
import com.sample.web.form.NoticeForm;
import com.sample.web.view.Image;
import com.sample.web.view.Notice;
import com.sample.web.view.Pagination;
import com.sample.web.view.Qna;
import com.sample.web.view.Reserve;
import com.sample.web.view.User;

@Controller
@RequestMapping("/admin")
public class ManagerController {

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ReserveService reserveService;
	
	@Value("${directory.save.noticeImg}")
	private String saveDirectory;
	@Autowired
	QnaService qnaService;
	
	@Value("${directory.save.qnaImg}")
	private String qnaSaveDirectory;
	
	@RequestMapping("home.do")
	public String home(Model model) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		Map<String, Object> regParam = new HashMap<>();
		
		int beginIndex  = 0;
		int endIndex = 5;
		regParam.put("sort", "like");
		regParam.put("endIndex", endIndex);
		regParam.put("beginIndex", beginIndex);
		
		List<UserInfoDto> userList = userService.getAllUsers(regParam);
		List<Reserve> topReserves = reserveService.getReserveCurrentCnt();
		
		

		
		param.put("sort", "date");
		param.put("query", "regDate");
		int total = userService.getAllUsersCount(param);

		model.addAttribute("topReserves", topReserves);
		model.addAttribute("userCount", total);
		model.addAttribute("userList", userList);
		
		return "/manager/managerhome";  
	}
	
	//notice
	/**
	 * 
	 * @param 없음 
	 * @return 공지사항 페이지
	 */
	@GetMapping("/notice/list.do")
	public String list(Model model
						, @RequestParam(value = "pageNo", defaultValue="1") int pageNo
						, @RequestParam(value = "rows", defaultValue = "10") int rows
						, @RequestParam(value = "status", defaultValue = "전체") String status
						, @RequestParam(value = "keyword", defaultValue = "blank") String keyword
						, HttpServletRequest req) {
		
		if ("blank".equals(status)) {
			status = null;
		}
		
		if ("blank".equals(keyword)) {
			keyword = null;
		}
		
		String nowStatus = StringUtil.nullToValue(status, "전체");
		String searchKeyword = StringUtil.nullToBlank(keyword);
		
		Map<String, Object> map  = noticeService.getNoticeForPaging(pageNo, rows, nowStatus, searchKeyword);
		Pagination pagination = (Pagination) map.get("pagination");
		List<Notice> notices = (List<Notice>) map.get("notices");
		int totalRows = (Integer)map.get("totalRows");
		int totalPageCount = (int)Math.ceil(((double)totalRows/(double)rows));
		
		HttpSession session = req.getSession();
		
		if (session.getAttribute("LOGIN_USER") != null) {
			
			User loginUser = (User)session.getAttribute("LOGIN_USER");
			User user = userService.getUserDetail(loginUser.getId());
			model.addAttribute("user", user);
			
		}
		
		// List<Notice> noticeList = noticeService.displayAllNotice();
		
		model.addAttribute("noticeList", notices);
		model.addAttribute("pagination", pagination);
		model.addAttribute("nowStatus", nowStatus);
		model.addAttribute("searchKeyword", keyword);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("rows", rows);
		
		System.out.println(pagination.getBeginPage());
		System.out.println(pagination.getEndPage());
		
		for (Notice notice : notices) {
			System.out.println(notice.getId());
		}
		
		return "manager/notice/list";
	}
	
	/**
	 * 
	 * @param 글번호
	 * @return 상세페이지
	 */
	@GetMapping("/notice/detail.do")
	public String detail(Model model
			, @RequestParam("no") int noticeId
			, HttpSession session) {
		
		// 조회수 증가
		noticeService.increaseViewCount(noticeId);
		
		// 글번호, 분류, 뱃지, 메인타이틀, 작성자, 조회수, 등록일 등
		NoticeDetailDto detailNotice = noticeService.displayNoticeDetail(noticeId);
		
		if (!(session.getAttribute("LOGIN_USER") == null)) {
			User loginedUser = (User)session.getAttribute("LOGIN_USER");
			boolean adminYN = loginedUser.isAdmin();
			model.addAttribute("adminYN", adminYN);
		}
		
		// 이전페이지, 다음페이지
		Notice nextNoticeIdInfo = noticeService.BasedOnCurrentNoticeIdNextNoticeInfo(noticeId);
		Notice preNoticeIdInfo = noticeService.BasedOnCurrentNoticeIdPreNoticeInfo(noticeId);
		
		model.addAttribute("detail", detailNotice);
		model.addAttribute("nextNoticeIdInfo", nextNoticeIdInfo);
		model.addAttribute("preNoticeIdInfo", preNoticeIdInfo);
		
		return "manager/notice/detail";
	}
	
	//qna
	@GetMapping("/qna/list.do")
	public String qnalist(Model model
				, @RequestParam(value="pageNo", defaultValue="1") int pageNo
				, @RequestParam(value="rows", defaultValue="10") int rows
				, @RequestParam(value="status", defaultValue="전체") String status
				, @RequestParam(value="keyword", defaultValue="blank") String keyword
				, HttpServletRequest req) {

		if ("blank".equals(status)) {
			status = null;
		}
		
		if ("blank".equals(keyword)) {
			keyword = null;
		}
		
		System.out.println("pageNo" + pageNo);
		
		String nowStatus = StringUtil.nullToValue(status, "전체");
		String searchKeyword = StringUtil.nullToBlank(keyword);
		
		Map<String, Object> map = qnaService.getQnAForPaging(pageNo, rows, nowStatus, searchKeyword);
		Pagination pagination = (Pagination) map.get("pagination");
		List<Qna> qnas = (List<Qna>)map.get("qnas");
		int totalRows = (Integer)map.get("totalRows");
		int totalPageCount = (int)Math.ceil(((double)totalRows/(double)rows));
		
		HttpSession session = req.getSession();
		
		User user = null;
		
		if (session.getAttribute("LOGIN_USER") != null) {
			 User loginUser = (User)session.getAttribute("LOGIN_USER");
			 user = userService.getUserDetail(loginUser.getId());
			 model.addAttribute("user", user);
		} else {
			model.addAttribute("user", user);
		}
		
		model.addAttribute("qnas", qnas);
		model.addAttribute("pagination", pagination);
		model.addAttribute("nowStatus", nowStatus);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("rows", rows);
		
		System.out.println(totalRows);
		System.out.println(totalPageCount);
		
		for (Qna qna : qnas) {
			System.out.println("id: " + qna.getId());
		}
		
		return "manager/qna/list";
	}
	
	
}
