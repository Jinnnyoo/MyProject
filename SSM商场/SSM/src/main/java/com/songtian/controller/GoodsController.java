package com.songtian.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.songtian.entity.Goods;
import com.songtian.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {

	// 导入对应事务
	@Autowired
	private GoodsService goodsService;
	
	
	//查询返回对应商品json
	@RequestMapping("/goodsJson")
	@ResponseBody
	public List<Goods> selectJson(Integer pageindex,Integer page){
		return goodsService.selectByPage(pageindex, page);
	}

}
