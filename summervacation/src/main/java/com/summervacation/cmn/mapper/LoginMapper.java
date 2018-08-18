package com.summervacation.cmn.mapper;

import java.util.HashMap;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

import com.summervacation.cmn.model.TB0000;

@Mapper
public interface LoginMapper {
	
	public TB0000 getLoginAuth(TB0000 inputTB0000);

}
