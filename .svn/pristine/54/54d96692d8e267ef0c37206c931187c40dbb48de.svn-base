package com.sample.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;

import com.sample.service.NoticeService;
import com.sample.utils.NumberUtil;
import com.sample.utils.StringUtil;
import com.sample.web.form.NoticeForm;
//import com.sample.web.form.NoticeImageUploadForm;
import com.sample.web.view.Notice;
import com.sample.web.view.NoticeImageUploadForm;
import com.sample.web.view.Pagination;
import com.sample.web.view.User;

/**
 * 
 * @author semin
 *
 */
@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Value("${directory.save.noticeImg}")
	private String saveDirectory;
	
	/**
	 * 
	 * @param 없음 
	 * @return 공지사항 페이지
	 */
	@GetMapping("/list.do")
	public String list(Model model
						, @RequestParam(value = "pageNo", defaultValue="1") int pageNo
						, @RequestParam(value = "rows", defaultValue = "10") int rows
						, @RequestParam(value = "status", defaultValue = "전체") String status
						, @RequestParam(value = "keyword", defaultValue = "blank") String keyword) {
		
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
		
		// List<Notice> noticeList = noticeService.displayAllNotice();
		
		System.out.println(rows);
		
		model.addAttribute("noticeList", notices);
		model.addAttribute("pagination", pagination);
		model.addAttribute("nowStatus", nowStatus);
		model.addAttribute("searchKeyword", keyword);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("rows", rows);
		
		return "notice/list";
	}
	
	/**
	 * 
	 * @param 글번호
	 * @return 상세페이지
	 */
	@GetMapping("/detail.do")
	public String detail(Model model, @RequestParam("no") int noticeId) {
		
		return "notice/detail";
	}
	
	/**
	 * 
	 * @param 없음
	 * @return 없음
	 */
	@GetMapping("/add.do")
	public String add(Model model) {
		
		return "notice/add";
	}
	
	/**
	 * 
	 * @param 공지사항 등록정보
	 * @return 공지사항 리스트 페이지
	 */
	@PostMapping("/add.do")
	public String addNotice(Model model, NoticeForm noticeForm) {
		
		List<String> imgSrcPaths = noticeForm.getImagePath();
		
		List<String> imgNames = new ArrayList<String>();
		
		if (imgSrcPaths == null) {
			
			imgNames.add("null");
			
		} else {
			for (String imgName : imgSrcPaths) {
				imgNames.add(imgName.substring(27));
			}
		}
		
		int category = 0; 
		if ("서비스소식".equals(noticeForm.getCategory())) {
			category = 0;
		} else if ("서비스오픈".equals(noticeForm.getCategory())) {
			category = 1;
		} else if ("서비스종료".equals(noticeForm.getCategory())) {
			category = 2;
		} else if ("서비스안내".equals(noticeForm.getCategory())) {
			category = 3;
		} else if ("기타".equals(noticeForm.getCategory())) {
			category = 4;
		}
		
		noticeForm.getTitle();
		noticeForm.getContent();
		
		Notice notice = new Notice();
		notice.setCategory(category);
		notice.setTitle(noticeForm.getTitle());
		notice.setContent(noticeForm.getContent());
		notice.setBadge(noticeForm.getBadge());
		
		notice.setImages(imgNames);
		
		User user = new User();
		user.setId("admin001");
		notice.setAdmin(user);
		
		noticeService.addNewNotice(notice);
		return "redirect:list.do";
	}
	
	
	@PostMapping("/addImage.do")
	public String addNoticeImage(Model model, NoticeImageUploadForm noticeImageUploadForm) throws Exception {
		
		MultipartFile upfile = noticeImageUploadForm.getUpfile();
		String category = noticeImageUploadForm.getCategory();
		
		if (!upfile.isEmpty()) {
			String filename = upfile.getOriginalFilename();
			
			// filename = System.currentTimeMillis() + filename;
			
			File file = new File(saveDirectory, filename);
			
			FileCopyUtils.copy(upfile.getInputStream(), new FileOutputStream(file));
			
			Map<String, String> containsFileNameAndCategoryName = new HashMap<String, String>();
			
			containsFileNameAndCategoryName.put("filename", filename);
			containsFileNameAndCategoryName.put("category", category);
			
			noticeService.addNewImage(containsFileNameAndCategoryName);
			
		}
		return "redirect:openModal.do";
	}
	
	
	@GetMapping("/openModal.do")
	public String openModal(Model model) {
		
		model.addAttribute("openModal", "open");
		
		return "notice/add";
	}
	
	/*
	@GetMapping("/displayImages.do")
	public String displayNoticeImagesList(Model model) {
		
		List<String> imagesPath = noticeService.displayAllNoticeImages();
		
		model.addAttribute("imagesPath", imagesPath);
		model.addAttribute("openModal", "open");
		
		return "notice/add";
	}
	*/
}
