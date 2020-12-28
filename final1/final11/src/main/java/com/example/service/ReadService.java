package com.example.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.CafeVO;
import com.example.domain.ReviewVO;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.GoodMapper;
import com.example.mapper_oracle.ReviewCommentMapper;
import com.example.mapper_oracle.ReviewImageMapper;
import com.example.mapper_oracle.ReviewMapper;

@Service
public class ReadService {
	@Autowired
	CafeMapper cMapper;
	@Autowired
	ReviewMapper rMapper;
	@Autowired
	ReviewImageMapper riMapper;
	@Autowired
	GoodMapper goodMapper;
	@Autowired
	ReviewCommentMapper rcMapper;
	
	@Transactional
	public CafeVO read(int ccode) {
		cMapper.updateView(ccode); //조회수 업데이트
		return cMapper.read(ccode); //read
	}
	
	@Transactional
	public void insertImage(ReviewVO vo){
		System.out.println("ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ");
		System.out.println(vo.toString());
		rMapper.insert(vo);
		ArrayList<String> images=vo.getImages();
		if(images.size() >0){
			for(String image:images){
				riMapper.insert(image,vo.getRcode());
			}
		}
	}
	
	@Transactional
	public void update(ReviewVO vo){
		ArrayList<String> images=vo.getImages();
		if(images.size()>0){
			riMapper.deleteImage(vo.getRcode());
			for(String image:images){
				riMapper.updateImage(vo.getRcode(), image);
			}
		}
		rMapper.update(vo);
	}
	
	@Transactional
	public void delete(int rcode){
		riMapper.deleteImage(rcode);
		goodMapper.reviewDelete(rcode);
		rcMapper.deleteComment(rcode);
		rMapper.delete(rcode);
	}
}
