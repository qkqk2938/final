package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.BmemberVO;
import com.example.domain.Criteria;

public interface BmemberMapper {
	
	public List<BmemberVO> list(Criteria cri); //cri 추가
	public void insert(BmemberVO vo);
	public void delete(String bcode);
	public void update(BmemberVO vo);
	public BmemberVO read(String bcode);
	public int totalCount(Criteria cri); //추가
}
