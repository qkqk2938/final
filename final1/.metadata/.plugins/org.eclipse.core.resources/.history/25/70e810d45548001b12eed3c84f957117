package com.example.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.domain.CafeVO;
import com.example.domain.FavoritesVO;
import com.example.domain.GoodVO;
import com.example.domain.ReviewVO;
import com.example.mapper_oracle.CafeImageMapper;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.FavoritesMapper;
import com.example.mapper_oracle.GmemberMapper;
import com.example.mapper_oracle.GoodMapper;
import com.example.mapper_oracle.HashtagMapper;
import com.example.mapper_oracle.MenuMapper;
import com.example.mapper_oracle.ReviewImageMapper;
import com.example.mapper_oracle.ReviewMapper;
import com.example.service.ReadService;

@Controller
public class ReadController {
	@Autowired
	GmemberMapper gMapper;
	@Autowired
	CafeMapper cMapper;
	@Autowired
	MenuMapper mMapper;
	@Autowired
	FavoritesMapper fMapper;
	@Autowired
	ReviewMapper rMapper;
	@Autowired
	ReadService rService;
	@Autowired
	CafeImageMapper ciMapper;
	@Autowired
	ReviewImageMapper riMapper;
	@Autowired
	GoodMapper goodMapper;
	@Autowired
	HashtagMapper hMapper;


	// read 페이지 이동(조회수 까지 증가함)
	@RequestMapping("read")
	public void read(Model model, HttpSession session, HttpServletRequest request, int ccode) {
		CafeVO vo = rService.read(ccode);

		if(session.getAttribute("lastview")!=null){
			
			ArrayList<CafeVO> lastview= (ArrayList<CafeVO>) session.getAttribute("lastview");
			
			  for (int i = 0; i < lastview.size(); i++) {
	                if (lastview.get(i).getCcode()==vo.getCcode()) {
	                	lastview.remove(i);
	                	
	                }
			  }
			
				lastview.add(vo);
			
			session.setAttribute("lastview", lastview);
		}
		model.addAttribute("vo", vo);
		model.addAttribute("cafeImage", ciMapper.list(ccode));
		model.addAttribute("menu", mMapper.list(ccode));
		String gid = (String) session.getAttribute("gid");
		model.addAttribute("gid", gid);
		model.addAttribute("tag",hMapper.read(ccode));
		
	}
	@RequestMapping("bestReview")
	@ResponseBody
	public HashMap<String,Object> bestReview(int ccode,HttpSession session){
		HashMap<String,Object> map=new HashMap<>();
		boolean idId = (String) session.getAttribute("gid")==null?false:true;
		String gid = (String) session.getAttribute("gid");
		if(idId){
			List<ReviewVO> brList=rMapper.bestReview(ccode);
			for(ReviewVO rvo:brList){
				GoodVO vo=new GoodVO();
				vo.setGid(gid);
				vo.setRcode(rvo.getRcode());
				int good=goodMapper.read(vo)==null?0:1;
				rvo.setGood(good);
			}
			map.put("br", brList);
		}else{
			map.put("br", rMapper.bestReview(ccode));
		}
		return map;
	};
	// Info 부분을 ajax으로 실시간 수정
	@RequestMapping("info.json")
	@ResponseBody
	public HashMap<String, Object> infoJson(int ccode,HttpSession session) {
		HashMap<String, Object> map = new HashMap<>();
		boolean isChk = (String) session.getAttribute("gid")==null?false:true;
		if(isChk){
			FavoritesVO vo=fMapper.read(ccode,(String) session.getAttribute("gid"));
			if(vo!=null){
				map.put("favorite", 1);
			}else{
				map.put("favorite", 0);
			}
		}
		map.put("favorites", fMapper.totalCount(ccode));
		map.put("review", rMapper.totalCount(ccode));
		map.put("vo", cMapper.read(ccode));
		map.put("scope", rMapper.avgScope(ccode));
		
		return map;
	}

	@RequestMapping(value = "favorite", method = RequestMethod.GET)
	public String favoriteGet(int ccode, HttpSession session) {
		String gid = (String) session.getAttribute("gid");
		if (gid != null) {
			return "redirect:read?ccode=" + ccode;
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "favorite", method = RequestMethod.POST)
	@ResponseBody
	public int favoritePost(int ccode, HttpSession session) {
		String gid = (String) session.getAttribute("gid");
		FavoritesVO vo = fMapper.read(ccode, gid);
		;
		if (vo == null) {
			fMapper.insert(ccode, gid);
			return 1;
		} else {
			fMapper.delete(ccode, gid);
			return 0;
		}
	}

	@RequestMapping("reviewInsert")
	public void reviewInsert(Model model, int ccode, HttpSession session) {
		model.addAttribute("vo", cMapper.read(ccode));
		String gid = (String) session.getAttribute("gid");
		if(gid!=null){
			model.addAttribute("gmember", gMapper.read(gid));
		}
	}

	@RequestMapping(value = "reviewInsert", method = RequestMethod.POST)
	public String insert(ReviewVO vo, MultipartHttpServletRequest multi,HttpServletRequest req) throws Exception {
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		// 추가이미지 여러개 업로드
		List<MultipartFile> files = multi.getFiles("files");
		if (files.size() > 0) {
			File mkPath = new File(path + "/attach");
			if (!mkPath.exists())
				mkPath.mkdir();
		}
		ArrayList<String> images = new ArrayList<>();
		for (MultipartFile attFile : files) {
			if (!attFile.isEmpty()) {
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_" + attFile.getOriginalFilename();
				// 파일 업로드
				File target = new File(path + "/attach", savedName);
				FileCopyUtils.copy(attFile.getBytes(), target);
				images.add(savedName);
			}
		}
		vo.setRimage(images.get(0));
		vo.setImages(images);
		rService.insertImage(vo);
		return "redirect:read?ccode=" + vo.getCcode();
	}

	@RequestMapping("reviewUpdate")
	public void reviewUpdate(Model model, int rcode, int ccode, HttpSession session) {
		model.addAttribute("rvo", rMapper.read(rcode));
		model.addAttribute("cvo", cMapper.read(ccode));
		model.addAttribute("images", riMapper.getImage(rcode));
		String gid = (String) session.getAttribute("gid");
		model.addAttribute("gmember", gMapper.read(gid));
	}
	
	@RequestMapping(value = "reviewUpdate", method = RequestMethod.POST)
	public String update(ReviewVO vo, MultipartHttpServletRequest multi,HttpServletRequest req) throws Exception {
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		// 첨부이미지들 수정
		List<MultipartFile> files = multi.getFiles("files");
		ArrayList<String> images = new ArrayList<>();
		for (MultipartFile attFile : files) { // 새로운 첨부 이미지들을 업로드 (폴더 사진을 추가하는거)
			if (!attFile.isEmpty()) {
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_" + attFile.getOriginalFilename();
				// 파일 업로드
				File target = new File(path + "/attach", savedName);
				FileCopyUtils.copy(attFile.getBytes(), target);
				images.add(savedName);
			}
		}
		if (images.size() > 0) { //추가한 파일이 있는경우
			// 기존의 첨부 이미지가 있으면 삭제
			List<String> oldimages = riMapper.getImage(vo.getRcode());
			if (oldimages.size() > 0) {
				for (String image : oldimages) {
					new File(path + "/attach/" + image).delete();
				}
			}
			vo.setRimage(images.get(0));
		}
		
		vo.setImages(images);
		rService.update(vo);
		return "redirect:read?ccode=" + vo.getCcode();
	}

	// 이미지출력
	@RequestMapping("display") // display?fileName=파일명.jpg
	@ResponseBody
	public ResponseEntity<byte[]> display(String fileName,HttpServletRequest req) throws Exception {
		String path = req.getSession().getServletContext().getRealPath("/").concat(File.separator+"resources"+File.separator+"img"+File.separator+"imgdb");
		System.out.println(path);
		ResponseEntity<byte[]> result = null;
		// display fileName이 있는 경우
		if (!fileName.equals("")) {
			File file = new File(path + File.separator + fileName);
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}
		return result;
	}
	//삭제 
	@RequestMapping(value = "reivewDelete", method = RequestMethod.POST)
	@ResponseBody
	public void delete(int rcode,HttpServletRequest req){
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		List<String> oldImages= riMapper.getImage(rcode);
		for(String image:oldImages){
			new File(path+"/attach/"+image).delete();
		}
		rService.delete(rcode);
	}
	
	//좌표를 통한 거리계산하여 주변 카페 검색
		@RequestMapping("nearbysearch.json")
		@ResponseBody
		public HashMap<String,Object> nearbysearch(int ccode){
			HashMap<String,Object> hashmap=new HashMap<>();
		
			
			double x=cMapper.read(ccode).getX()==null?0:Double.parseDouble(cMapper.read(ccode).getX()); //해당 read페이지의 카페 x좌표
			double y=cMapper.read(ccode).getY()==null?0:Double.parseDouble(cMapper.read(ccode).getY()); //해당 read페이지의 카페 y좌표
			
			List<CafeVO> listCafe= cMapper.nearList(x, y);
			for(CafeVO vo:listCafe){
				String rscope=rMapper.avgScope(vo.getCcode())==null ? "0": rMapper.avgScope(vo.getCcode());
				double drscope=Double.parseDouble(rscope);
				DecimalFormat df=new DecimalFormat("0.#");
				vo.setRscope(df.format(drscope));
			}
			
			hashmap.put("list", listCafe);
			return hashmap;
		}	
		//리뷰이미지
		@RequestMapping("reviewImage")
		@ResponseBody
		public List<String> reviewImage(int rcode){
			return riMapper.getImage(rcode);
		}
		
		@RequestMapping(value = "good", method = RequestMethod.GET)
		public String good(int ccode, HttpSession session) {
			boolean isLogin=(String) session.getAttribute("gid")==null?false:true;
			if (isLogin) {
				return "redirect:read?ccode=" + ccode;
			} else {
				return "login";
			}
		}
		//좋아요
		@RequestMapping(value = "good", method = RequestMethod.POST)
		@ResponseBody
		public int goodPost(int rcode,HttpSession session){
			String gid = (String) session.getAttribute("gid");
			
			GoodVO vo=new GoodVO();
			vo.setGid(gid);
			vo.setRcode(rcode);
			if(goodMapper.read(vo)==null){
				goodMapper.insert(vo);
				return 1;
			}else{
				goodMapper.delete(vo);
				return 0;
			}
		}
}
