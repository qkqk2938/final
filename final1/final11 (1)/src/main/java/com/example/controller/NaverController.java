package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NaverAPI;

@Controller
public class NaverController {
	@RequestMapping("blog.json")
	public String blogJson(String query){
		String apiURL="https://openapi.naver.com/v1/search/blog.json";
		String result=NaverAPI.Search(apiURL, query);
		return result;
	}
}
