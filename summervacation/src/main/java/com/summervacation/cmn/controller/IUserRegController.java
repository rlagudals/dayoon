package com.summervacation.cmn.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.summervacation.cmn.model.TB0000;

public interface IUserRegController {
	
	@RequestMapping(value = "/userreg", method = RequestMethod.POST)
	public String userreg();
	
	/*
	 * 회원가입 진행.
	 */
	@RequestMapping(value = "/userRegProc",  method = RequestMethod.POST)
	public TB0000 userRegProc(TB0000 inputTB0000);

}
