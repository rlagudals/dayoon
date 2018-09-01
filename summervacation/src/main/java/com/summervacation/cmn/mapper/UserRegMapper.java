package com.summervacation.cmn.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.summervacation.cmn.model.TB0000;

@Mapper
public interface UserRegMapper {

	// 회원가입
	public int insertUserInfo(TB0000 inputTB0000);
}
