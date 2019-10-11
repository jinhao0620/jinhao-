package com.alex.alex.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alex.service.PlantService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller  
public class PlantController {
	

	@Autowired
	
	private PlantService plantService;
	
	@RequestMapping("/")
	public ModelAndView showplantAndCategory(
		@RequestParam(defaultValue ="")String mname,
		@RequestParam(defaultValue ="1")Integer pageNum,
		@RequestParam(defaultValue ="4")Integer pageSize){
		//开启分页插件
		PageHelper.startPage(pageNum, pageSize);
		//定义一个试图工具，把页面作为参数引用
		ModelAndView mav = new ModelAndView("plant-list");
		//定义一个map集合，用来参数使用
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(mname, mname);
		
		List<Map<String,Object>> list = plantService.findPlantAndCategory(map);
		
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String,Object>>(list);
		//添加到mav里面，方便页面取消
		mav.addObject("list", list);
		mav.addObject("page", page);
		mav.addObject("map", map);
		
		return mav;
		
	}
	
}
