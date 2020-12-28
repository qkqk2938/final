package com.example.mapper_oracle;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.FavoritesVO;

public interface FavoritesMapper {
	public List<HashMap<String, Object>> list(@Param("gid")String gid);
	public FavoritesVO read(@Param("ccode")int ccode,@Param("gid")String gid);
	public void delete(@Param("ccode")int ccode,@Param("gid")String gid);
	public void insert(@Param("ccode")int ccode,@Param("gid")String gid);
	public int totalCount(int ccode); //카페용
	public int totalCount1(String gid); //회원용
	public void userDelete(String gid);
}
