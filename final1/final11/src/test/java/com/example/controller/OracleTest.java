package com.example.controller;

import java.io.File;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.Criteria;
import com.example.mapper.MysqlMapper;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.LcategoryMapper;
import com.example.mapper_oracle.OracleMapper;

@RunWith(SpringJUnit4ClassRunner.class) //���� SpringJUnit4ClassRunner.class import�Ѵ�.
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class OracleTest {
	@Autowired
	private CafeMapper mapper;
	@Autowired
	private LcategoryMapper lmapper;
	
	@Test
	public void getTime() { 
		File file = new File("https://phinf.pstatic.net/contact/20200717_55/1594952752283NGaJE_PNG/1111.png");
		
	}
}
