package com.alex.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alex.alex.domain.Category;
import com.alex.alex.domain.Plant;
import com.alex.dao.PlantMapperDao;
import com.alex.service.PlantService;

@Service
public class PlantServiceImpl implements PlantService {
	
	@Autowired
	private PlantMapperDao PlantMapperDao;

	@Override
	public List<Map<String, Object>> findPlantAndCategory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return PlantMapperDao.findPlantAndCategory(map) ;
	}

	@Override
	public Plant lookPlant(Integer id) {
		// TODO Auto-generated method stub
		return PlantMapperDao.lookPlantw(id);
	}

	@Override
	public List<Category> lookCategory() {
		// TODO Auto-generated method stub
		return PlantMapperDao.lookCategory();
	}

	@Override
	public int updatePlant(Plant plant) {
		// TODO Auto-generated method stub
		return PlantMapperDao.updatePlant(plant);
	}

	@Override
	public int deletePlant(Integer id) {
		// TODO Auto-generated method stub
		return PlantMapperDao.deletePlant(id);
	}

	@Override
	public int addPlant(Plant plant) {
		// TODO Auto-generated method stub
		return PlantMapperDao.addPlant(plant);
	}

	@Override
	public int deleteAll(String arr) {
		// TODO Auto-generated method stub
		return PlantMapperDao.deleteAll(arr);
	}

}