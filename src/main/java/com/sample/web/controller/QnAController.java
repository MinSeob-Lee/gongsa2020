package com.sample.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
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

import com.sample.service.QnaService;
import com.sample.service.UserService;
import com.sample.utils.NumberUtil;
import com.sample.utils.StringUtil;
import com.sample.web.form.AnswerForm;
import com.sample.web.form.QnaForm;
import com.sample.web.view.Pagination;
import com.sample.web.view.Qna;
import com.sample.web.view.QnaImage;
import com.sample.web.view.User;

import oracle.jdbc.proxy.annotation.Post;

/**
 * 
 * @author semin
 *
 */
@Controller
@RequestMapping("/qna")
public class QnAController {
	
	@Autowired
	QnaService qnaService;
	/*
	@Value("${directory.save.qnaImg}")
	private String saveDirectory;
	*/
	
	@Autowired
	UserService userService;
	
	/**
	 * 
	 * @param 페이지번호, 보여줄 행의 수, 카테고리 상태, 검색어
	 * @return
	 */
	@GetMapping("/list.do")
	public String list(Model model
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
		
		return "qna/list";
	}
	
	@PostMapping("/addqna.do")
	public String addQna(QnaForm qnaForm
			, HttpSession session
			, @RequestParam("uploadFiles") List<MultipartFile> uploadFiles
			, @RequestParam("imgCategory") String imgCate
			, HttpServletRequest req) throws Exception {
		
		List<String> Images = new ArrayList<>();
		String savedDirectory = session.getServletContext().getRealPath("/") + "resources/sample-images/";
		for (MultipartFile multipartFile : uploadFiles) {
			
			if (!multipartFile.isEmpty()) {
				String filename = multipartFile.getOriginalFilename();
				
				Images.add(filename);
				
				File file = new File(savedDirectory, filename);
				
				FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
				
				filename = System.currentTimeMillis() + filename;
				Map<String, String> containsFileNameAndCategoryName = new HashMap<>();
				
				containsFileNameAndCategoryName.put("filename", filename);
				containsFileNameAndCategoryName.put("category", imgCate);
				
				qnaService.addNewImage(containsFileNameAndCategoryName);
			}
		}
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		Qna qna = new Qna();
		
		qna.setCategory(qnaForm.getQnaCategory());
		qna.setQuestionTitle(qnaForm.getQnaTitle());
		qna.setQuestionContent(qnaForm.getQnaContent());
		qna.setQuestionUser(user);
		qna.setOpened(qnaForm.isQnaOpened());
		
		qnaService.addNewQna(qna);
		qnaService.addQnaImages(Images);
		
		return "redirect:list.do";
	}
	
	@PostMapping("/modifyquestion.do")
	public String modifyQna(QnaForm qnaForm
			, @RequestParam("uploadFiles") List<MultipartFile> uploadFiles
			, @RequestParam("imgCategory") String imgCate
			, HttpServletRequest req) throws Exception {
		
		List<String> images = new ArrayList<>();
		HttpSession session = req.getSession();
		
		String savedDirectory = session.getServletContext().getRealPath("/") + "resources/sample-images/";
		
		for (MultipartFile multipartFile : uploadFiles) {
			
			if (!multipartFile.isEmpty()) {
				String filename = multipartFile.getOriginalFilename();
				
				images.add(filename);
				
				File file = new File(savedDirectory, filename);
				
				FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
				
				filename = System.currentTimeMillis() + filename;
				Map<String, String> containsFileNameAndCategoryName = new HashMap<>();
				
				containsFileNameAndCategoryName.put("filename", filename);
				containsFileNameAndCategoryName.put("category", imgCate);
				
				qnaService.addNewImage(containsFileNameAndCategoryName);
			}
		}
		
		qnaService.updateQna(qnaForm);
		
		Map<String, Object> map = new HashMap<>();
		int qnaId = NumberUtil.stringToInt(qnaForm.getQnaId());
		map.put("qnaId", qnaId);
		map.put("images", images);
		
		qnaService.updateQnaImages(map);
		
		return "redirect:list.do";
	}
	
	@GetMapping("/deleteQuestion.do")
	public String deleteQna(@RequestParam("id") int qnaId) {
		
		qnaService.removeQna(qnaId);
		
		return "redirect:list.do";
	}
	
	@GetMapping("/questionDetail.do")
	@ResponseBody
	public Qna getQna(@RequestParam("id") int qnaId) {
		
		Qna qna = qnaService.getQnaDetail(qnaId);
		
		return qna; 
	} 
	
	@PostMapping("/addanswer.do")
	public String addAnswer(AnswerForm answerForm
			, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		answerForm.setAdminId(user.getId());
		
		qnaService.addNewAnswer(answerForm);
		
		return "redirect:/admin/qna/list.do";
		
	}
	
	@PostMapping("/modifyanswer.do")
	public String modifyAnswer(AnswerForm answerForm
			, HttpSession session) {
		
		User user = (User) session.getAttribute("LOGIN_USER");
		
		answerForm.setAdminId(user.getId());
		
		qnaService.modifyAnswer(answerForm);
		
		return "redirect:/admin/qna/list.do";
	}
	
	@GetMapping("/getImages.do")
	@ResponseBody
	public Map<String, Object> getImagesById (@RequestParam("id") int id) {
		
		List<QnaImage> images = qnaService.getIamgesById(id);
		Qna qna = qnaService.getQnaDetail(id);
		
		Map<String, Object> map = new HashMap<>();
		map.put("images", images);
		map.put("qna", qna);
		
		return map;
	}
	
}
