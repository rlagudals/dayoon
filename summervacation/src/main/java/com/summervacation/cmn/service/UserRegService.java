package com.summervacation.cmn.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.summervacation.cmn.mapper.UserRegMapper;
import com.summervacation.cmn.model.TB0000;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class UserRegService {
	
	@Autowired
	private UserRegMapper userRegMapper;
	
	// 회원가입
	public TB0000 userRegProc(TB0000 insertData) {
		
		return userRegMapper.insertUserInfo(insertData);
	}

}
