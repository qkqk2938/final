package com.example.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.util.WebUtils;

import com.example.domain.CafeVO;
import com.example.domain.Criteria;
import com.example.domain.HashtagVO;
import com.example.domain.MenuVO;
import com.example.domain.PageMaker;
import com.example.mapper_oracle.CafeMapper;
import com.example.service.CafeService;

@Controller
public class InsertController {
	@Autowired
	CafeMapper mapper;
	@Autowired
	CafeService service;
	
	
	@Resource(name="uploadPath1")
	String path1;
	
	
	@RequestMapping(value = "insert2", method = RequestMethod.POST)
	public String insertPost(CafeVO vo,MultipartHttpServletRequest multi,HttpServletRequest req) throws Exception{
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb/cafeimage");
		
		MultipartFile file = multi.getFile("file");
		List<MultipartFile> files = multi.getFiles("files");
		List<MultipartFile> imagefiles = multi.getFiles("imageFile");
		
		
		if(!imagefiles.isEmpty()){
			File mkPath = new File(path + "/menuimages");
			if(!mkPath.exists()) mkPath.mkdir();
			
			ArrayList<String> images = new ArrayList<String>();
			
			for(MultipartFile attfile:imagefiles){
				System.out.println(attfile.getOriginalFilename());
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_"+attfile.getOriginalFilename();
				File target = new File(path+"/menuimages",savedName);
				FileCopyUtils.copy(attfile.getBytes(), target);
				images.add(savedName);
				
			}
				vo.setMenus(images);
			
			}
		
		if(!file.isEmpty()){
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_"+file.getOriginalFilename();
		File target = new File(path,savedName);
		FileCopyUtils.copy(file.getBytes(), target);
		vo.setCimage(savedName);
		}
		
		
		if(!files.isEmpty()){
			
			File mkPath = new File(path + "/cafeimage");
			if(!mkPath.exists()) mkPath.mkdir();
			
			ArrayList<String> images = new ArrayList<String>();
			
			for(MultipartFile attfile:files){
				
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_"+attfile.getOriginalFilename();
				File target = new File(path+"/cafeimage",savedName);
				FileCopyUtils.copy(attfile.getBytes(), target);
				
				images.add(savedName);
			}
				vo.setImages(images);
			
			}
		
		
		service.insert(vo);
		return "redirect:list";
	}
	@RequestMapping(value = "miribogi", method = RequestMethod.POST)	
	public String miribogi(CafeVO vo,Model model){
		String menus[] = vo.getCmenu().split(",");
		String hashtag[] = vo.getCcontent().split("#");
		vo.setCcontent(hashtag[0]);
		vo.setCcode(0);
		
		ArrayList<HashtagVO> tagList = new ArrayList<HashtagVO>();;
		
		for(int i = 1; i<hashtag.length ;i++){
			HashtagVO hvo = new HashtagVO();
			hvo.setCcode(vo.getCcode());
			hvo.setTag(hashtag[i]);
			tagList.add(hvo);
		}
		ArrayList<MenuVO> menuList = new ArrayList<MenuVO>();;
		for(int i = 0 ;i<(menus.length/2);i++){
			MenuVO mvo = new MenuVO();  
		
			mvo.setMenu(menus[i*2]);
			mvo.setPrice(Integer.parseInt(menus[(i*2)+1]));
			
			menuList.add(mvo);
		}
		
		
		model.addAttribute("tag",tagList);
	
		model.addAttribute("menu", menuList);
		
		
		model.addAttribute("vo",vo);
		return "miribogi";
	}

	
			
}
