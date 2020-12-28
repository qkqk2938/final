package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.CafeImageVO;
import com.example.domain.Criteria;

public interface CafeImageMapper {
	public List<CafeImageVO> list(int ccode);
	public void read(String image);
	public void delete(String image);
	public void insert(CafeImageVO vo);
	public int totalCount(int ccode);
	public List<String> cafeImage(int ccode);
	public void deleteImage(int ccode); //해당 카페 이미지 전체 삭제 
}
