package com.summervacation.cmn.controller.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.summervacation.cmn.controller.ILoginController;
import com.summervacation.cmn.service.LoginService;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class LoginController implements ILoginController {

	@Autowired
	LoginService loginService;

	@Override
	public String index() {

		log.debug("인덱스");

		return "/common/index.jsp";
	}

	@Override
	public @ResponseBody HashMap<String, Object> loginProc(@RequestBody HashMap<String, String> inputMap) {

		HashMap<String, Object> returnMap = new HashMap<String, Object>();

		log.debug("loginProc 호출");
		log.debug("인풋파라메터 " + inputMap.toString());

		returnMap = loginService.loginProc(inputMap);

		if (returnMap != null) {
			returnMap.put("sccYn", "Y");
			returnMap.put("resultMsg", "로그인성공");
		} else {
			returnMap = new HashMap<String, Object>();
			returnMap.put("sccYn", "N");
			returnMap.put("resultMsg", "로그인실패");
		}

		return (HashMap<String, Object>) returnMap;
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
