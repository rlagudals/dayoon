package com.summervacation.cmn.mapper;

import com.summervacation.cmn.model.TB0000;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRegMapper {

	// 회원가입
	public TB0000 insertUserInfo(TB0000 inputTB0000);
}
