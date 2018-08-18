package com.summervacation.cmn.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.summervacation.cmn.mapper.LoginMapper;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class LoginService {

	@Autowired
	private LoginMapper loginMapper;

	//로그인 처리
	public HashMap<String, Object> loginProc(HashMap<String, String> param) {
		
		return (HashMap<String, Object>) loginMapper.getLoginAuth(param);
	}	

}
