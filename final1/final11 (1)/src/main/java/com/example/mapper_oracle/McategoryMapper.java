package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.McategoryVO;

public interface McategoryMapper {
		public List<McategoryVO> list(String lcode);
		public McategoryVO codeRead(@Param("lcode")String lcode,@Param("mname")String mname);
		public McategoryVO read(String mcode);
		public int totalCount();
		//public void insert(McategoryVO vo); 餓λ쵎�뀋�몴�꼶�뮉 占쎈쾻嚥∽옙,占쎄텣占쎌젫,占쎈땾占쎌젟 占쎈툡占쎌뒄 X
		//public void update(LcategoryVO vo);
	    //public void delete(String mcode);  
}

