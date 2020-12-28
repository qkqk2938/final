package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.Criteria;
import com.example.domain.MenuVO;

public interface MenuMapper {
	public List<MenuVO> list(int ccode); // 카페의 메뉴 List 
	public MenuVO read(@Param("ccode")String ccode,@Param("menu")String menu); // 어떤 카페의 한개의 메뉴 읽기
	public void insert(MenuVO vo); // 메뉴 insert
	public void update(MenuVO vo); //메뉴 update
	public void delete(@Param("ccode")String ccode,@Param("menu")String menu); //메뉴 delete
	public int totalCount(@Param("cri")Criteria cri,@Param("ccode")String ccode); // 메뉴 갯수
	public List<String> menuImage(int ccode); //메뉴이미지 추가함
	public void deleteMenu(int ccode); //카페의 메뉴 전체삭제
}
