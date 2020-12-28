package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.OperatorVO;

public interface OperatorMapper {
	public List<OperatorVO> list(Criteria cri);
	public void read(OperatorVO vo);
	public void delete(OperatorVO vo);
	public void insert(OperatorVO vo);
	public int totalCount();
}
