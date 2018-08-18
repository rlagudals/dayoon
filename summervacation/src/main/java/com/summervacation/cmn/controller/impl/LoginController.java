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

@Controller
@Log4j
public class LoginController implements ILoginController {

	@Autowired
	LoginService loginService;

	@Override
	public String index() {

		System.out.println("인덱스");

		loginService.index();

		return "/common/index.jsp";
	}

	@Override
	public @ResponseBody HashMap<String, String> loginProc(@RequestBody HashMap<String, String> inputMap) {
		System.out.println("로그인");
		System.out.println(inputMap.toString());
		HashMap<String, String> returnMap = new HashMap<String, String>();
		
		returnMap.put("sccYn", "Y");
		returnMap.put("resultMsg", "로그인테스트중..");
		return (HashMap<String, String>) returnMap;
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
