package com.songtian.service;

import com.songtian.entity.User;

public interface UserService {
	User selectByName(String name);
}
