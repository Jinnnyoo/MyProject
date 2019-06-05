package com.songtian.mapper;

import com.songtian.entity.User;

public interface UserMapper {
	User selectByName(String name);
}
