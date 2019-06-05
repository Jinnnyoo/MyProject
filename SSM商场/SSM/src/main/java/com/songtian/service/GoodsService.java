package com.songtian.service;

import java.util.List;

import com.songtian.entity.Goods;

public interface GoodsService {
	List<Goods> selectByPage(Integer pageindex, Integer page);
	
	int selectCount();
}
