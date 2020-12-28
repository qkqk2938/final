package com.example.mapper_oracle;

import java.util.List;



import com.example.domain.CafeImageVO;

import com.example.domain.HashtagVO;

public interface HashtagMapper {
	public List<HashtagVO> read(int ccode);
	public List<HashtagVO> ccodelist(String tag);
	public void delete(int ccode);
	public void insert(HashtagVO vo);
	public List<String> hashTag();
}
