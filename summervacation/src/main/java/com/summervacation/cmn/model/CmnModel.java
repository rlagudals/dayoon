package com.summervacation.cmn.model;

import lombok.Data;

@Data
public class CmnModel {
	
	// 로그인 완료 여부 확인 메시지
	private String sccYn;
	
	// 로그인 결과 확인 메시지
	private String resultMsg;
	
	// 신규가입 완료 확인
	private String userRegCheck;
	
	// 신규가입 완료 확인 메시지
    private String userRegCheckMsg;
}
