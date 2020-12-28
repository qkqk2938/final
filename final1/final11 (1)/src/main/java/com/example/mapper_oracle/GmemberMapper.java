package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.GmemberVO;

public interface GmemberMapper {
		public void insert(GmemberVO vo);
		public List<GmemberVO> list(Criteria cri);
		public GmemberVO read(String gid);
		public void update(GmemberVO vo);
	    public void delete(String gid);
	    public int totalCount(Criteria cri);
}
