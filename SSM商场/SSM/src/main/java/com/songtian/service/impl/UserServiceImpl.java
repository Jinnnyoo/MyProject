package com.songtian.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.songtian.entity.User;
import com.songtian.mapper.UserMapper;
import com.songtian.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	public UserServiceImpl() {
		System.out.println("实例化");
	}
	
	@Autowired
	private UserMapper mapper;

	@Override
	public User selectByName(String name) {
		return mapper.selectByName(name);
	}

}
