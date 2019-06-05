package com.songtian.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.songtian.entity.Goods;

public interface GoodsMapper {
	
	List<Goods> selectByPage(@Param("pageindex")Integer pageindex,@Param("page")Integer page);
	
	
	int selectCount();
 
}
