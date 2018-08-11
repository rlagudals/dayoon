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
	/**
	 * 교육보고서 화면
	 * 
	 * @param model
	 */
	public void index() {

		log.debug("index ------------------ @Service");
		log.debug("index ------------------ @Service");
		log.debug("index ------------------ @Service");
		
		Map<String, String> param = new HashMap<String, String>();
		loginMapper.getLoginAuth(param);
	}

}
