package com.example.service;

import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.CafeImageVO;
import com.example.domain.CafeVO;
import com.example.domain.HashtagVO;
import com.example.domain.KakaoAPI;
import com.example.domain.MenuVO;
import com.example.mapper_oracle.CafeImageMapper;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.HashtagMapper;
import com.example.mapper_oracle.LcategoryMapper;
import com.example.mapper_oracle.McategoryMapper;
import com.example.mapper_oracle.MenuMapper;

@Service
public class CafeService {
	@Autowired
	CafeMapper mapper;
	@Autowired
	CafeImageMapper imageMapper;
	@Autowired
	McategoryMapper mmapper;
	@Autowired
	MenuMapper menuMapper;
	@Autowired
	HashtagMapper tagMapper;
	@Autowired
	LcategoryMapper lmapper;
	@Transactional
	public void update(CafeVO vo){
		String addr = vo.getCaddr();
		String addrs[] = addr.split(" ");
		String menus[] = vo.getCmenu().split(",");
		String lname = addrs[0];
		String laddr = addrs[1];
		String maddr = addrs[1]+addrs[2];
		String hashtag[] = vo.getCcontent().split("#");
		String query = vo.getCaddr();
		JSONParser parse = new JSONParser();
		vo.setCcontent(hashtag[0]);
		String text;
		try {
			text = URLEncoder.encode(query,"UTF-8");
			String result = KakaoAPI.search("https://dapi.kakao.com/v2/local/search/address.json?query="+text);
			JSONObject jObject = (JSONObject)parse.parse(result);
			JSONArray jarray = (JSONArray) jObject.get("documents");
			if(!jarray.isEmpty()){
				JSONObject job = (JSONObject) ((JSONObject) jarray.get(0)).get("address");
					vo.setX(job.get("x").toString());
					vo.setY(job.get("y").toString());
			};
		} catch (Exception e) {
			e.printStackTrace();
		}
		String lcode = lmapper.coderead(lname);
		if(!(mmapper.codeRead(lcode,maddr)==null)){
			vo.setMcode(mmapper.codeRead(lcode,maddr).getMcode());
		}else if(!(mmapper.codeRead(lcode,laddr)==null)){
			vo.setMcode(mmapper.codeRead(lcode,laddr).getMcode());
		}else{
			vo.setMcode("50130");
		}
		String cmenu = "";
		if(menus[0]!=null){cmenu = menus[0];}
		vo.setCmenu(cmenu);
		mapper.update(vo); 
		tagMapper.delete(vo.getCcode()); //전체 태그 삭제 
		for(int i = 1; i<hashtag.length ;i++){
			HashtagVO hvo = new HashtagVO();
			hvo.setCcode(vo.getCcode());
			hvo.setTag(hashtag[i]);
			tagMapper.insert(hvo);
		}
		menuMapper.deleteMenu(vo.getCcode()); //전체메뉴 삭제
		for(int i = 0 ;i<(menus.length/2);i++){
			MenuVO mvo = new MenuVO();  
			mvo.setCcode(vo.getCcode());
			mvo.setMenu(menus[i*2]);
			mvo.setPrice(Integer.parseInt(menus[(i*2)+1]));
			mvo.setImage(vo.getMenus().get(i));
			menuMapper.insert(mvo);
		}
		ArrayList<String> images = vo.getImages();
		CafeImageVO imagevo = new CafeImageVO();
		imagevo.setCcode(vo.getCcode());
		if(images.size()>0){
			imageMapper.deleteImage(vo.getCcode());
			for(String image:images){
				imagevo.setImage(image);
				imageMapper.insert(imagevo);
			}
		}		
		mapper.update(vo);
	}
	@Transactional
	public void insert(CafeVO vo){
		String addr = vo.getCaddr();
		String addrs[] = addr.split(" ");
		String menus[] = vo.getCmenu().split(",");

		String lname = addrs[0];
		String laddr = addrs[1];
		String maddr = addrs[1]+addrs[2];
		String hashtag[] = vo.getCcontent().split("#");
	
		String query = vo.getCaddr();
		JSONParser parse = new JSONParser();
		vo.setCcontent(hashtag[0]);
		String text;
		try {
			text = URLEncoder.encode(query,"UTF-8");
			String result = KakaoAPI.search("https://dapi.kakao.com/v2/local/search/address.json?query="+text);
			JSONObject jObject = (JSONObject)parse.parse(result);
			JSONArray jarray = (JSONArray) jObject.get("documents");
		
			if(!jarray.isEmpty()){
				JSONObject job = (JSONObject) ((JSONObject) jarray.get(0)).get("address");
				
					vo.setX(job.get("x").toString());
					vo.setY(job.get("y").toString());
			
			};
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
	
		
		String lcode = lmapper.coderead(lname);
		
		if(!(mmapper.codeRead(lcode,maddr)==null)){
			vo.setMcode(mmapper.codeRead(lcode,maddr).getMcode());
		}else if(!(mmapper.codeRead(lcode,laddr)==null)){
			vo.setMcode(mmapper.codeRead(lcode,laddr).getMcode());
		}else{
			vo.setMcode("50130");
		}
		String cmenu = "";
		if(menus[0]!=null){
		cmenu = menus[0];
		}
		vo.setCmenu(cmenu);
		System.out.println(vo.toString());
		mapper.insert(vo);
		vo.setCcode(mapper.getLastCcode());
		
		for(int i = 1; i<hashtag.length ;i++){
			HashtagVO hvo = new HashtagVO();
			hvo.setCcode(vo.getCcode());
			hvo.setTag(hashtag[i]);
			tagMapper.insert(hvo);
		}
		for(int i = 0 ;i<(menus.length/2);i++){
			MenuVO mvo = new MenuVO();  
			mvo.setCcode(vo.getCcode());
			mvo.setMenu(menus[i*2]);
			mvo.setPrice(Integer.parseInt(menus[(i*2)+1]));
			mvo.setImage(vo.getMenus().get(i));
			menuMapper.insert(mvo);
		}
		
		ArrayList<String> images = vo.getImages();

		CafeImageVO imagevo = new CafeImageVO();
		imagevo.setCcode(vo.getCcode());
		if(images.size()>0){
			for(String image:images){
				
				imagevo.setImage(image);
				imageMapper.insert(imagevo);
			}
		}
	}
	

	
}
