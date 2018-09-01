package com.summervacation.cmn.model;

import lombok.Data;

@Data
public class TB0000 extends CmnModel{

	private int empNo;
	private String loginId;
	private String loginPwd;
	private String userNm;
	private int frontRegNo;
	private int gender;
	private String marrYn;
	private String telNum;
	private String email;
	private String deptCd;
	private String gradeCd;
	private String fstRegDttm;
	private int fstRgstEno;
	private String lstChgDttm;
	private int lstChgEno;
}
