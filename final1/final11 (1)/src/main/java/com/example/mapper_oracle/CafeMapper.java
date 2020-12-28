package com.example.mapper_oracle;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.CafeVO;
import com.example.domain.Criteria;

public interface CafeMapper {
	public List<HashMap<String, Object>> list1(String bcode);
	public List<CafeVO> list(Criteria cri);
	public void insert(CafeVO vo);
	public void delete(int ccode);
	public void update(CafeVO vo);
	public CafeVO read(int ccode);
	public int totalCount(Criteria cri); 
	public void updateView(int ccode);
	public int getLastCcode();
	public List<CafeVO> nearList(@Param("x")double x,@Param("y") double y);
}
