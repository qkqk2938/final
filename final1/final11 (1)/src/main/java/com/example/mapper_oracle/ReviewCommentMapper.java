package com.example.mapper_oracle;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.ReviewCommentVO;


public interface ReviewCommentMapper {
	public List<HashMap<String, Object>> list(@Param("gid")String gid); //�젣媛� �뒓�겮湲곗뿉�뒗 rcode瑜� �뙆�씪誘명꽣濡� 諛쏆븘�빞�맂�떎怨� �깮媛곹빀�땲�떎.
	public void insert(ReviewCommentVO vo);
	public List<ReviewCommentVO> read(int rcode);
	public void update(ReviewCommentVO vo);
	public void delete(int rccode);
	public int totalCount(String rcode);
	public void deleteComment(int rcode);
	public void userDelete(String gid);
	
}