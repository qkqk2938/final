package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.GoodVO;

public interface GoodMapper {
	public List<GoodVO> list();
	public GoodVO read(GoodVO vo);
	public void insert(GoodVO vo);
	public void delete(GoodVO vo);
	public int totalCount();
	public void userDelete(String gid);
	public int goodCount(int rcode); //추가

	public void reviewDelete(int rcode); //추가
}
