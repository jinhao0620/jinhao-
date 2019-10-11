package com.alex.service;

import java.util.List;
import java.util.Map;

import com.alex.alex.domain.Category;
import com.alex.alex.domain.Plant;

public interface PlantService {

	//植物表和类别表联查方法
		List<Map<String, Object>> findPlantAndCategory(Map<String, Object> map);

		//查看植物的方法
		Plant lookPlant(Integer id);

		//查看类别列表的方法
		List<Category> lookCategory();

		//修改植物表对象
		int updatePlant(Plant plant);

		//删除植物表对象
		int deletePlant(Integer id);

		//添加对象的方法
		int addPlant(Plant plant);

		//批量删除的方法
		int deleteAll(String arr);

}
