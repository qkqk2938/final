package com.example.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.CafeVO;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.FavoritesMapper;
import com.example.mapper_oracle.ReviewCommentMapper;
import com.example.mapper_oracle.ReviewMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	FavoritesMapper fmapper;
	
	@Autowired
	ReviewMapper rmapper;
	
	@Autowired
	ReviewCommentMapper rcmapper;
	
	@Autowired
	CafeMapper cmapper;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		if(session.getAttribute("lastview")==null){
		ArrayList<CafeVO> lastview = new ArrayList<CafeVO>();
		session.setAttribute("lastview", lastview);
		}
		return "home";
	}
	@RequestMapping("contact")
	public void contact(){
		
	}
	
	
	
	@RequestMapping("category")
	public void category(){
		
	}
	@RequestMapping("login_result2")
	public void login_result2(){
		
	}
	@RequestMapping("myPage")
	public void myPage(Model model, HttpSession session){
			String gid=(String)session.getAttribute("gid");
			model.addAttribute("list", fmapper.list(gid));
			model.addAttribute("list1", rmapper.list1(gid));
			model.addAttribute("list2", rcmapper.list(gid));
			

	}
	
	@RequestMapping("cmyPage")
	public void cmyPage(Model model, HttpSession session){
			String bcode=(String)session.getAttribute("bcode");
			model.addAttribute("list", cmapper.list1(bcode));

	}
	@RequestMapping("joinInsert")
	public void joinInsert(){
		
	}
	@RequestMapping("joinInsert2")
	public void joinInsert2(){
		
	}
	@RequestMapping("insert")
	public void insert(){
		
	}
	
	
	
}
