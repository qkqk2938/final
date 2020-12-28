package com.example.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.GmemberVO;
import com.example.mapper_oracle.BmemberMapper;
import com.example.mapper_oracle.FavoritesMapper;
import com.example.mapper_oracle.GmemberMapper;
import com.example.mapper_oracle.GoodMapper;
import com.example.mapper_oracle.ReviewCommentMapper;
import com.example.mapper_oracle.ReviewImageMapper;
import com.example.mapper_oracle.ReviewMapper;

@Service
public class UserService {

	@Autowired
	ReviewCommentMapper reviewComment;

	@Autowired
	ReviewImageMapper reviewImage;

	@Autowired
	GoodMapper good;

	@Autowired
	ReviewMapper review;

	@Autowired
	FavoritesMapper favorites;

	@Autowired
	GmemberMapper gmember;
	@Autowired
	BmemberMapper bmember;

	@Transactional
	public void delete(String gid,HttpServletRequest req) {
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		
		GmemberVO user = gmember.read(gid);
		reviewComment.userDelete(gid);
		List<HashMap<String, Object>> reviewList = review.list1(gid);
		HashMap<String, Object> map = null;
		int rcode;
		for (int i = 0; i < reviewList.size(); i++) {
			map = reviewList.get(i);
			rcode = (int) map.get("RCODE");
			reviewImage.deleteImage(rcode);
		}
		good.userDelete(gid);
		review.userDelete(gid);
		favorites.userDelete(gid);
		// 패스에서 프사 삭제하는 메소드 기입해야함.
		new File(path + "/" + user.getGimage()).delete();
		gmember.delete(gid);
	}

	@Transactional
	public void delete1(String bcode, HttpServletRequest req) {
		
		bmember.delete(bcode);
	}
}
