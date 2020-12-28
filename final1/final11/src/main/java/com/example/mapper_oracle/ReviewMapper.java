package com.example.mapper_oracle;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.ReviewVO;

public interface ReviewMapper {
	public List<HashMap<String, Object>> list1(@Param("gid")String gid); //cri媛� �븘�슂�빐蹂댁엫
	public List<ReviewVO> list(int ccode);
	public void insert(ReviewVO vo);
	public void delete(int rcode);
	public void update(ReviewVO vo);
	public ReviewVO read(int rcode);
	public int totalCount(int ccode);
	public String avgScope(int ccode);
	public List<ReviewVO> bestReview(int ccode);
	public void userDelete(String gid);
}
