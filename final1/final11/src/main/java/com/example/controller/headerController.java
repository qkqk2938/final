package com.example.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.LcategoryVO;
import com.example.domain.McategoryVO;
import com.example.mapper_oracle.LcategoryMapper;
import com.example.mapper_oracle.McategoryMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class headerController {
	@Autowired
	LcategoryMapper lcmapper;
	@Autowired
	McategoryMapper mcmapper;
	
	@RequestMapping("/lcategory.json")
	@ResponseBody
	public List<LcategoryVO> lheader() {
	
		return lcmapper.list();
	}
	@RequestMapping("/mcategory.json")
	@ResponseBody
	public List<McategoryVO> mheader(String lcode) {

	
		return mcmapper.list(lcode);
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchlist(String lcode,String searchType, String mcode,String keyword) throws UnsupportedEncodingException {
		String key=URLEncoder.encode(keyword, "UTF-8"); //한글 깨짐방지
		
		System.out.println(searchType+"........."+lcode+"........."+mcode+"........."+keyword+".........");
		
		if(lcode.equals("total")){
			System.out.println("성공했성1111111111");
			return "redirect:list?searchType="+searchType+"&keyword="+key;
		}else{
			if(mcode.equals("total")){
				System.out.println("성공했성2222222222");
				return "redirect:list?searchType="+searchType+"&lcode="+lcode+"&keyword="+key;
			}else{
				System.out.println("성공했성33333333");
				return "redirect:list?searchType="+searchType+"&mcode="+mcode+"&keyword="+key;
			}
		}
	}
}
