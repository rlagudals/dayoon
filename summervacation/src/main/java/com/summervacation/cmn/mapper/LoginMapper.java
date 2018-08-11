package com.summervacation.cmn.mapper;

import java.util.HashMap;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {
	
	public HashMap<?, ?> getLoginAuth(Map<String, String> param);

}
