package com.sample.service;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.sample.dao.PerformanceDao;
import com.sample.dto.PerformanceAgeReserveStats;
import com.sample.dto.PerformanceDetailDto;
import com.sample.dto.PerformanceDto;
import com.sample.dto.PerformanceGenderReserveStats;
import com.sample.utils.StringUtil;
import com.sample.web.view.HallInfo;
import com.sample.web.view.Pagination;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceGenre;
import com.sample.web.view.PerformanceMain;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;
import com.sample.web.view.UserLikes;
import com.sun.mail.iap.ByteArray;

@Service
@Transactional
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	PerformanceDao performanceDao;

	@Override
	public void addPerformance(Performance performance) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<PerformanceDetailDto> getPerformancesByCategory(String category) {
		// TODO Auto-generated method stub

		return performanceDao.getPerformancesByCategory(category);
	}

	@Override
	public PerformanceDetailDto getPerformanceDetailById(int performanceId) {
		// TODO Auto-generated method stub
		return performanceDao.getPerformanceById(performanceId);
	}

	@Override
	public PerformanceDto getPerformanceDetail(int performanceId) {
		return performanceDao.selectPerformance(performanceId);
	}

	@Override
	public List<PerformanceSchedule> getPerformanceDetailByMap(Map<String, Object> data) {
		return performanceDao.selectPerformanceByIdAndDate(data); 
	}

	/**
	 * performanceId로 performanceDetailDto 객체를 획득할 수 있다.
	 */
	public PerformanceDetailDto getPerformanceByPerformanceMainId(int performanceMainId) {
		return performanceDao.getPerformanceByPerformanceMainId(performanceMainId);
	}
	@Override
	public List<PerformanceDetailDto> getAllPerformances() {
		return performanceDao.getAllPerformances();
	}

	@Override
	public List<Performance> searchPerformances(Performance performance) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public String[] getGenreByCategory(String category) {
		// TODO Auto-generated method stub
		return performanceDao.getGenreByCategory(category);
	}

	@Override
	public List<PerformanceDetailDto> searchPerformances(Map<String, Object> map) {
		// TODO Auto-generated method stub
		// 줄 출력 테스트
		//System.out.println("검색조건 퍼포먼스 총 줄 수:" + performanceDao.getTotalRowsOfPerformance(map));
		return performanceDao.searchPerformance(map);
	}



	@Override
	public List<PerformanceSeatPrice> getPerformanceSeatPriceById(int performanceId) {
		return performanceDao.getPerformanceSeatPrice(performanceId);
	}

	@Override
	public List<PerformanceSchedule> getPerformanceDetailByDate(String performanceDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PerformanceSchedule getPerformanceScheduleByPerformanceId(int performanceMainId) {
		return performanceDao.getScheduleByPerformanceMainId(performanceMainId);
	}

	@Override
	public List<PerformanceDto> getPerformanceByUserId(String userId) {
		return performanceDao.getPerformanceByUserId(userId);
	}

	@Override
	public Map<String, Object> getTotalSearchForPaging(Map<String, Object> map) {
		// TODO Auto-generated method stub

//		System.out.println("페이징 처리를 위한 getPerformanceForPaging");
//
//		System.out.println("pageNo: "+map.get("pageNo"));
//		System.out.println("rows: "+map.get("rows"));

		int pageNo = (int) map.get("pageNo");
		int rows = (int) map.get("rows");

		int totalRows =  performanceDao.getTotalRowsOfPerformanceForTotalSearch(map);
//		System.out.println("totalRows: "+totalRows);

		// 페이지 네비게이션에 필요한 정보 생성하기
		// 한 화면에 보여줄 행의 갯수, 블록당 페이지번호 수, 현재 페이지 번호, 총 행의 갯수
		Pagination pagination = new Pagination(rows, 5, pageNo, totalRows);
		// 현재 페이지번호에 해당하는 데이터 조회에 필요한 구간계산하기
		int beginIndex = (pageNo - 1)*rows;		
		int endIndex = rows;

		// 조회조건을 만족하는 공연 조회하기
		map.put("beginIndex", beginIndex);
		map.put("endIndex", endIndex);		

		//System.out.println("기존 map에 추가됨");
		List<PerformanceDetailDto> performances = performanceDao.totalSearchPerformanceByPage(map);

//		System.out.println("beginIndex: "+map.get("beginIndex"));
//		System.out.println("endIndex: "+map.get("endIndex"));

		// 테스트용
		//System.out.println("검색조건과 범위대로 조회되었나 체크합니다.");
//		for (PerformanceDetailDto p : performances) {
//			System.out.println(p.getTitle());
//		}

		Map<String, Object> result = new HashMap<String, Object>();

		result.put("performances", performances);
		result.put("pagination", pagination);
		result.put("totalRows", totalRows);

		return result;
	}

	@Override
	public Map<String, Object> getPerformanceForPaging(Map<String, Object> map) {
		// TODO Auto-generated method stub

//		System.out.println("페이징 처리를 위한 getPerformanceForPaging");
//
//		System.out.println("pageNo: "+map.get("pageNo"));
//		System.out.println("rows: "+map.get("rows"));

		int pageNo = (int) map.get("pageNo");
		int rows = (int) map.get("rows");

		// 검색조건에 해당하는 총 공연갯수
		int totalRows = performanceDao.getTotalRowsOfPerformance(map);
		//System.out.println("totalRows: "+ totalRows);

		// 페이지 네비게이션에 필요한 정보 생성하기
		// 한 화면에 보여줄 행의 갯수, 블록당 페이지번호 수, 현재 페이지 번호, 총 행의 갯수
		Pagination pagination = new Pagination(rows, 5, pageNo, totalRows);
		// 현재 페이지번호에 해당하는 데이터 조회에 필요한 구간계산하기
		//		int beginIndex = (pageNo - 1)*rows + 1;
		//		if (beginIndex == 1) {
		//			beginIndex = 0;
		//		}
		int beginIndex = (pageNo - 1)*rows;


		int endIndex = rows;

		// 조회조건을 만족하는 공연 조회하기
		map.put("beginIndex", beginIndex);
		map.put("endIndex", endIndex);		

		//System.out.println("기존 map에 추가됨");
		List<PerformanceDetailDto> performances = performanceDao.searchPerformanceByPage(map);


//		System.out.println("beginIndex: "+map.get("beginIndex"));
//		System.out.println("endIndex: "+map.get("endIndex"));


		// 테스트용
//		System.out.println("검색조건과 범위대로 조회되었나 체크합니다.");
//		for (PerformanceDetailDto p : performances) {
//			System.out.println(p.getTitle());
//		}



		Map<String, Object> result = new HashMap<String, Object>();

		result.put("performances", performances);
		result.put("pagination", pagination);
		result.put("totalRows", totalRows);

		return result;
	}

	@Override
	public List<HallInfo> getAllHallInfos() {
		// TODO Auto-generated method stub
		return performanceDao.getAllHallInfos();
	}

	@Override
	public HallInfo getHallInfoById(int HallInfoid) {
		// TODO Auto-generated method stub
		return performanceDao.getHallInfoById(HallInfoid);
	}

	@Override
	public List<Performance> getUserLikeList(int offset,String userId) {
		// TODO Auto-generated method stub
		return performanceDao.getLikesList(offset,userId);
	}

	@Override
	public void insertPerformance(Performance performance, HallInfo hallInfo, String insertHallYn, 
			Map<String, Integer> seatPrices) throws Exception {
		// TODO Auto-generated method stub

		// 새로운 공연장 정보를 데이터베이스에 저장하는 경우
		// 공연장 정보를 먼저 데이터베이스에 저장한다.
		if ("Y".equals(insertHallYn)) {
			performanceDao.insertHallInfo(hallInfo);
		} 
		// 공연장 정보를 공연정보vo에 저장한다.
		performance.setHallInfoId(hallInfo.getId());

		// 공연정보를 데이터베이스에 저장하기
		performanceDao.insertPerformance(performance);

		// 공연장르를 데이터베이스에 저장하기		
		for (String genre : performance.getGenre()) {
			PerformanceGenre performanceGenre = new PerformanceGenre();
			performanceGenre.setId(performance.getId());
			performanceGenre.setGenre(genre);					
			performanceDao.insertGenre(performanceGenre);
		}

		// 좌석정보를 데이터베이스에 저장하기
		// A, S, R석 정보 저장 		
		PerformanceSeatPrice seatA = new PerformanceSeatPrice();
		seatA.setInfoId(performance.getId());
		seatA.setSeatRate("A");
		seatA.setPrice(seatPrices.get("A"));
		performanceDao.insertPerformanceSeatPrice(seatA);

		PerformanceSeatPrice seatS = new PerformanceSeatPrice();
		seatS.setInfoId(performance.getId());
		seatS.setSeatRate("S");
		seatS.setPrice(seatPrices.get("S"));
		performanceDao.insertPerformanceSeatPrice(seatS);

		PerformanceSeatPrice seatR = new PerformanceSeatPrice();
		seatR.setInfoId(performance.getId());
		seatR.setSeatRate("R");
		seatR.setPrice(seatPrices.get("R"));
		performanceDao.insertPerformanceSeatPrice(seatR);


	}

	@Override
	public List<PerformanceMain> getPerformanceMain(int performanceInfoId) {
		// TODO Auto-generated method stub
		return performanceDao.getPerformanceMain(performanceInfoId);
	}

	@Override
	public String[] getGenreById(int id) {
		// TODO Auto-generated method stub
		return performanceDao.getGenreById(id);
	}

	@Override
	public void deletePerformance(int performanceInfoId) {
		// TODO Auto-generated method stub

		// 공연장르 삭제
		performanceDao.deletePerformanceGenresByPerformanceInfoId(performanceInfoId);
		// 공연좌석정보삭제
		performanceDao.deletePerformanceSeatPricesbyPerformanceInfoId(performanceInfoId);
		// 공연정보삭제
		performanceDao.deletePerformanceInfo(performanceInfoId);

	}

	@Override
	public void updatePerformanceInfo(Performance performance) {
		// TODO Auto-generated method stub

		// 기존의 공연장르들을 삭제한다.
		performanceDao.deletePerformanceGenresByPerformanceInfoId(performance.getId());

		// 공연정보를 저장한다.
		performanceDao.updatePerformanceInfo(performance);

		// 새롭게 입력한 공연장르들을 삽입한다.
		for (String genre : performance.getGenre()) {
			PerformanceGenre performanceGenre = new PerformanceGenre();
			performanceGenre.setId(performance.getId());
			performanceGenre.setGenre(genre);					
			performanceDao.insertGenre(performanceGenre);
		}		

	}

	@Override
	public HallInfo getHallInfoByPerformanceInfoId(int performanceInfoId) {
		// TODO Auto-generated method stub
		return performanceDao.getHallInfoByPerformanceInfoId(performanceInfoId);
	}

	@Override
	public void updatePerformanceHallInfo(Performance performance, HallInfo hallInfo, String insertHallInfo) {
		// TODO Auto-generated method stub

		// 새로 입력한 경우 새로운 공연장정보를 데이터베이스에 추가한다.
		if ("Y".equals(insertHallInfo)) {
			performanceDao.insertHallInfo(hallInfo);
		}

		// 새 공연장정보를 공연정보 vo에 저장한다.
		performance.setHallInfo(hallInfo);

		// 새 공연장정보와 공연정보를 연결짓는다.
		performanceDao.updatePerformanceHallInfoId(performance);
	}

	@Override
	public PerformanceSeatPrice getPerformanceSeatPriceByPerformanceInfoAndSeatRate(
			PerformanceSeatPrice performceSeatPrice) {
		// TODO Auto-generated method stub
		return performanceDao.getPerformanceSeatPriceByPerformanceInfoAndSeatRate(performceSeatPrice);
	}

	@Override
	public void updatePerformanceSeatInfo(Performance performance, Map<String, Integer> seatPrices) {
		// TODO Auto-generated method stub

		// 기존 공연좌석정보삭제
		performanceDao.deletePerformanceSeatPricesbyPerformanceInfoId(performance.getId());

		// 새 좌석정보를 데이터베이스에 저장하기
		// A, S, R석 정보 저장 		
		PerformanceSeatPrice seatA = new PerformanceSeatPrice();
		seatA.setInfoId(performance.getId());
		seatA.setSeatRate("A");
		seatA.setPrice(seatPrices.get("A"));
		performanceDao.insertPerformanceSeatPrice(seatA);

		PerformanceSeatPrice seatS = new PerformanceSeatPrice();
		seatS.setInfoId(performance.getId());
		seatS.setSeatRate("S");
		seatS.setPrice(seatPrices.get("S"));
		performanceDao.insertPerformanceSeatPrice(seatS);

		PerformanceSeatPrice seatR = new PerformanceSeatPrice();
		seatR.setInfoId(performance.getId());
		seatR.setSeatRate("R");
		seatR.setPrice(seatPrices.get("R"));
		performanceDao.insertPerformanceSeatPrice(seatR);

	}



	@Override
	public String saveImage(String strUrl, String title, String saveDirectory) {

		String realFilename = System.currentTimeMillis() + title + ".";

		try {

			URL url = new URL(strUrl);

			//			BufferedImage image =  ImageIO.read(url); 얘 계속 null 뱉음 도저히 이유를 모르겠음

			System.out.println("url은 대체 뭐냐 : " + url);


			realFilename = realFilename + strUrl.substring(strUrl.lastIndexOf(".")+1, strUrl.length());

			System.out.println("realFilename이 대체 뭐야 : " + realFilename);
			//			String ext = strUrl.substring(strUrl.lastIndexOf(".")+1, strUrl.length());

			//			System.out.println("image는 도대체 머냐 : " + image);

			//			System.out.println("ext는 대체 뭐냐 : " + ext);

			//			ImageIO.write(image, ext, new File(saveDirectory + realFilename)); 얘도 안됨

			URLConnection connection = url.openConnection();
			connection.setReadTimeout(3000);
			InputStream in = connection.getInputStream();

			//			System.out.println("in은 또 뭐야 : " + in);

			//			FileUtils.copyURLToFile(url, new File(saveDirectory + realFilename)); 이것도 안됨 ㅋㅋㅋ
			FileOutputStream out = new FileOutputStream(new File(saveDirectory, realFilename));

			FileCopyUtils.copy(in, out);

		} catch (Exception e){
			e.printStackTrace();
		}
		return realFilename;
	}


	public PerformanceMain getPerformanceMainByPerformanceId(int performanceId) {
		return performanceDao.getPerformanceMainByPerformanceId(performanceId);
	}

	@Override
	public List<PerformanceDetailDto> getPerformanceByCategoryLimit(String category) {
		return performanceDao.getPerformanceByCategoryLimit(category);
	}

	@Override
	public UserLikes getUserLikesByUserIdAndPerformanceInfoId(UserLikes userLikes) {
		// TODO Auto-generated method stub
		return performanceDao.getUserLikesByUserIdAndPerformanceInfoId(userLikes);
	}

	@Override
	public void insertPerformanceLikes(UserLikes userLikes, Performance performance) {
		// TODO Auto-generated method stub
		performanceDao.insertPerformanceLikes(userLikes);
		performanceDao.updatePerformanceLikes(performance);
		
	}

	@Override
	public void deletePerformanceLikes(UserLikes userLikes, Performance performance) {
		// TODO Auto-generated method stub
		performanceDao.deletePerformanceLikes(userLikes);
		performanceDao.updatePerformanceLikes(performance);
	}

	@Override
	public int getGenderReserveCountByPerformanceInfoIdAndGender(
			PerformanceGenderReserveStats performanceGenderReserveStats) {
		// TODO Auto-generated method stub
		return performanceDao.getGenderReserveCountByPerformanceInfoIdAndGender(performanceGenderReserveStats);
	}

	// performance_info 테이블 likes 변경
	@Override
	public void updatePerformanceLikes(Performance performance) {
		// TODO Auto-generated method stub
		performanceDao.updatePerformanceLikes(performance);
	}

	// performance_info 테이블 reserveCount 변경
	@Override
	public void updatePerformanceReserveCount(Performance performance) {
		// TODO Auto-generated method stub
		performanceDao.updatePerformanceReserveCount(performance);
	}

	@Override
	public int getAgeGroupReserveCountByPerformanceInfoIdAndAge(PerformanceAgeReserveStats performanceAgeReserveStats) {
		// TODO Auto-generated method stub
		return performanceDao.getAgeGroupReserveCountByPerformanceInfoIdAndAge(performanceAgeReserveStats);
	}
 
}
