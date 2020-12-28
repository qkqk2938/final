package com.example.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.example.domain.Criteria;
import com.example.domain.PageMaker;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.GmemberMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CafeController {
	
	 @Autowired
	  CafeMapper mapper;
	
	@RequestMapping("list")
	public String list(Criteria cri ,Model model,HttpServletRequest request,HttpSession session){
	    //쿠키에 로그인정보가 있으면 로그인 상태유지
		
		Cookie cookie=WebUtils.getCookie(request,"gid");
	    if(cookie!=null){
	    	request.getSession().setAttribute("gid",cookie.getValue());
	    }
	    String dest=(String)session.getAttribute("dest");
	    System.out.println("dest="+dest);
	    
	    if(dest != null){
	    	session.removeAttribute("dest");
	    	return "redirect:" +dest;
	    }
	    
	    PageMaker pm= new PageMaker();
		cri.setPerPageNum(8);
	    pm.setCri(cri);
		pm.setTotalCount(mapper.totalCount(cri));
		model.addAttribute("pm",pm);
		model.addAttribute("list",mapper.list(cri));
		return "list";
	}
	
}
