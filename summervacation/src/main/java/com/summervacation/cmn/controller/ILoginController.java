package com.summervacation.cmn.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public interface ILoginController {
	
	/*
	 * 사원관리화면으로 이동하기 위한 컨트롤러
	 */
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String index();
	
	/*
	 * 회원가입을 위해서 팝업창을 띄운다.
	 */
	@RequestMapping(value = "/singInPopUp", method = RequestMethod.POST)
	public String singInPopUp();
	
	/*
	 * 회원가입완료후 확인버튼 클릭시 회원가입을 진행한다.
	 */
	@RequestMapping(value = "/singInUpRegUser", method = RequestMethod.POST)
	public String singInUpRegUser();	
	/*
	 * 회원가입 팝업에서 아이디 중복체크를 한다.
	 */
	@RequestMapping(value = "/sameIdChecked", method = RequestMethod.POST)
	public String sameIdChecked();
	/*
	 * 사용자의 아이디와 패쓰워드가 입력되어다면 로그인 프로세스를 진행한다.
	 */
	@RequestMapping(value = "/loginSubmit", method = RequestMethod.POST)
	public String loginSubmit();
	
	/*
	 * 사용자의 아이디를 찾는다.
	 */
	@RequestMapping(value = "/findLoginId", method = RequestMethod.POST)
	public String findLoginId();	
		
	/*
	 * 사용자가 입력한 아이디를 기반으로 정보가 일치할시 비밀번호를 초기화 한다.
	 */
	@RequestMapping(value = "/initPassword", method = RequestMethod.POST)
	public String initPassword();
}
