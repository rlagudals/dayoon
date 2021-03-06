package com.summervacation.sample.controller.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.summervacation.sample.controller.ISampleController;
import com.summervacation.sample.model.SampleVo;
import com.summervacation.sample.model.TBI1000;
import com.summervacation.sample.service.SampleService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class SampleController implements ISampleController {

	@Autowired
	SampleService sampleService;
	
	
	@Override
	public String sample(@RequestParam String pageno) {

		return "/sample/sample" + pageno + ".jsp";
	}

	@Override
	public @ResponseBody SampleVo sample1( @RequestBody SampleVo inVo) {
	
		// 서비스호출과 리턴을 위한 서비스 Vo와 화면 리턴을 위한 컨트롤러 out Vo 선언
		List<TBI1000> list = new ArrayList<TBI1000>();
		SampleVo sampleVo = new SampleVo();
		// 리스트가져와서 담음
		list = sampleService.selectSample1(inVo.getTbi1000());
		
		log.info(list.toString());
		
		sampleVo.setTbi1000List1(list); 
		
		return sampleVo;
	}

}
