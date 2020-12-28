package com.example.controller;


import java.awt.image.BufferedImage;
import java.io.File;
import java.net.URL;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.example.domain.BmemberVO;

import com.example.domain.GmemberVO;
import com.example.mapper_oracle.BmemberMapper;
import com.example.mapper_oracle.GmemberMapper;
import com.example.service.UserService;

@Controller
public class UserController {
	@Autowired
	GmemberMapper mapper;
	@Autowired
	BmemberMapper mapper1;
	@Autowired
	UserService service;

	 @RequestMapping(value="login_result", method=RequestMethod.GET)
	    public String loginPOSTNaver(HttpSession session) {
	        
	        return "login_result";
	    }

	@RequestMapping("login")
	public void login(){
		
	}
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}

	
	@RequestMapping(value="prelogin",method=RequestMethod.POST)
	public String prelogin(GmemberVO vo,HttpSession session){
		
		session.setAttribute("gid", vo.getGid());

	
		String dest = (String) session.getAttribute("dest");
		if(dest==null){
			return "redirect:/";
		}
		return "redirect:/"+dest;
	}
	
	@ResponseBody
	@RequestMapping(value="login",method=RequestMethod.POST)
	public int loginPost(GmemberVO vo,HttpSession session,boolean chkLogin,HttpServletResponse response){
		
		GmemberVO resultVO=mapper.read(vo.getGid());
		BmemberVO resultVO1=mapper1.read(vo.getGid());
		
		
		if(resultVO==null){
			
			if(resultVO1==null){
				return 0;
			}else if(resultVO1.getBpass().equals(vo.getGpass())){
				session.setAttribute("bid", vo.getGid());
				session.setAttribute("User2VO", resultVO1);
				if(chkLogin){
					Cookie cookie=new Cookie("bid",vo.getGid());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 7);
					response.addCookie(cookie);
					}
						return 1;
			}else{
				return 2;	
				
			}
			
		}else if(resultVO.getGpass().equals(vo.getGpass())){
			session.setAttribute("gid", vo.getGid());
			session.setAttribute("UserVO", resultVO);
			session.setAttribute("UserAddr", resultVO.getGaddr().split("#"));
			if(chkLogin){
				Cookie cookie=new Cookie("gid",vo.getGid());
				cookie.setPath("/");
				cookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(cookie);
				}
					return 1;
		}else{
				return 2;	
				
			}
		}
	
	@ResponseBody
	@RequestMapping(value="chkid")
	public String chkid(String gid){
		
		GmemberVO gvo = mapper.read(gid);
		if(gvo!=null){
			
			//id  있음
			return "1";
		}
		//id  없음
		return "0";
	}
	
	
	
	@RequestMapping(value="insert",method=RequestMethod.POST)
	public String insert(GmemberVO vo,MultipartHttpServletRequest multi,HttpServletRequest req)throws Exception{
		 MultipartFile file=multi.getFile("file");
		 String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		 
		
		 
		 
		if(vo.getGimage()!=""){
			String imgUrl = vo.getGimage(); 
			String imgFilePath = vo.getGid()+".jpg";              
			String imgFormat = "jpg";  
		
			  try
		        {
		            // Image 가져오기
		            BufferedImage image = ImageIO.read(new URL(imgUrl));
		                       
		            // Image 저장할 파일
		            File imgFile = new File(path,imgFilePath);
		           
		            // Image 저장
		            ImageIO.write(image, imgFormat, imgFile);
		        }
		        catch (Exception e)
		        {
		        }
			  UUID uid = UUID.randomUUID();
			  
			  vo.setGpass(uid.toString().substring(1,2)+vo.getGid());
			  
			vo.setGimage(imgFilePath);
		}
		 
		 
		 
			if(!file.isEmpty()){
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_"+file.getOriginalFilename();
				File target = new File(path,savedName);
				FileCopyUtils.copy(file.getBytes(), target);
				vo.setGimage(savedName);
				}
			
		System.out.println(vo.toString());
		mapper.insert(vo);
		return "redirect:login";
}
	
	@RequestMapping(value="insert1",method=RequestMethod.POST)
	public String insert1(BmemberVO vo){
		
		mapper1.insert(vo);
		return "redirect:login";
	}
	

	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(GmemberVO vo) throws Exception {
		mapper.update(vo);
		return "redirect:home";
	}

	@ResponseBody
	@RequestMapping(value = "/uploadProfileImage", method = RequestMethod.POST)
	public String uploadProfileImage(MultipartFile file, HttpSession session,HttpServletRequest req) throws Exception {
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		
		GmemberVO user = (GmemberVO) session.getAttribute("UserVO");
		user = mapper.read(user.getGid());
		String fullName = user.getGimage();
		if (file != null) { // 업로드한 파일이 있으면
			// 1. 기존에 이미지가 있으면 지우고 업로드해야함
			UUID uid = UUID.randomUUID();
			fullName = uid.toString() + "_" + file.getOriginalFilename();
			new File(path + "/" + user.getGimage()).delete();
			File target = new File(path, fullName);
			FileCopyUtils.copy(file.getBytes(), target);
		}
		return fullName;
	}

	@ResponseBody
	@RequestMapping(value = "deleteUser", method = RequestMethod.POST)
	public boolean deleteUser(String gid, String gpass,HttpServletRequest req) {
		GmemberVO vo = mapper.read(gid);
		if (vo.getGpass().equals(gpass)) {
			service.delete(gid,req);
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping("joinUpdate")
	public void joinUpdate() {
	}
	@ResponseBody
	@RequestMapping(value = "update2", method = RequestMethod.POST)
	public String update2(BmemberVO vo) throws Exception {
		mapper1.update(vo);
		return "redirect:home";
	}

	@ResponseBody
	@RequestMapping(value = "deleteUser2", method = RequestMethod.POST)
	public boolean deleteUser2(String bcode, String bpass, HttpServletRequest req) {
		BmemberVO vo = mapper1.read(bcode);
		if (vo.getBpass().equals(bpass)) {
			service.delete1(bcode, req);
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping("joinUpdate2")
	public void joinUpdate2() {
	}
	}
	
	

