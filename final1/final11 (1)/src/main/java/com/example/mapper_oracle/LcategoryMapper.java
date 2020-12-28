package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.LcategoryVO;

public interface LcategoryMapper {
		public List<LcategoryVO> list();
		public LcategoryVO read(String lcode);
		public int totalCount();
		public String coderead(String lname);
		//public void update(LcategoryVO vo); 대분류는 등록,삭제,수정 필요없음 
	    //public void delete(String lcode);  
		//public void insert(LcategoryVO vo);
}



