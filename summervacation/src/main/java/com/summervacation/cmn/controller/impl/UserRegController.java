package com.summervacation.cmn.controller.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.summervacation.cmn.model.TB0000;
import com.summervacation.cmn.controller.ILoginController;
import com.summervacation.cmn.controller.IUserRegController;
import com.summervacation.cmn.service.LoginService;
import com.summervacation.cmn.service.UserRegService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class UserRegController implements IUserRegController {

	@Autowired
	UserRegService userRegService;
	
	@Override
	public String userreg() {

		return "/common/userreg.jsp";
	}
	
	// 회원가입
	@Override
	public @ResponseBody TB0000 userRegProc(@RequestBody TB0000 inputTB0000) {

		TB0000 returnNewInfo = new TB0000();
		
		log.debug("userReg 호출");
		log.debug("신규등록 데이터 " + inputTB0000.toString());
		
		returnNewInfo = userRegService.userRegProc(inputTB0000);

		if (returnNewInfo != null) {
			
			returnNewInfo.setUserRegCheck("Y");
			returnNewInfo.setUserRegCheckMsg("insert 성공");
			
		} else {
			
			returnNewInfo = new TB0000();
			returnNewInfo.setUserRegCheck("N");
			returnNewInfo.setUserRegCheckMsg("insert 실패");
		}

		return returnNewInfo;
	}

}
