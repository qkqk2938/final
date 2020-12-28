package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.ReviewImageVO;

public interface ReviewImageMapper {
	public List<ReviewImageVO> list(Criteria cri); // 인스타용
	public List<ReviewImageVO> list1(@Param("cri")Criteria cri,@Param("rcode")int rcode); // 리뷰용
	public void insert(@Param("image")String image,@Param("rcode")int rcode);
	public ReviewImageVO read(String image);
	public void updateImage(@Param("rcode")int rcode,@Param("image")String iamge);
	public List<String> getImage(int rcode);
	public void deleteImage(int rcode);
}