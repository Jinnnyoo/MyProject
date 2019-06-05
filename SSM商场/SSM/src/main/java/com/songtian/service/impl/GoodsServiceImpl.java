package com.songtian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.songtian.entity.Goods;
import com.songtian.mapper.GoodsMapper;
import com.songtian.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	//调用映射类来完成逻辑
	@Autowired
   private GoodsMapper mapper;

	@Override
	public List<Goods> selectByPage(Integer pageindex, Integer page) {
		return mapper.selectByPage(pageindex, page);
	}

	@Override
	public int selectCount() {
		return mapper.selectCount();
	}

}
