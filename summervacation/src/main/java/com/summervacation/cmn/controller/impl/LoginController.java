package com.summervacation.cmn.controller.impl;

import org.springframework.stereotype.Controller;

import com.summervacation.cmn.controller.ILoginController;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController implements ILoginController {

	@Override
	public String index() {
	
		log.debug("dddddddddddddddddddddd");
		log.debug("dddddddddddddddddddddd");
		log.debug("dddddddddddddddddddddd");

		return "/common/index.jsp";
	}

	@Override
	public String singInPopUp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String singInUpRegUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String sameIdChecked() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String loginSubmit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findLoginId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String initPassword() {
		// TODO Auto-generated method stub
		return null;
	}

}
