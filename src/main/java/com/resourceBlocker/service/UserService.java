package com.resourceBlocker.service;

import com.resourceBlocker.model.User;

public interface UserService {
	
    User findByUsername(String username);
    void save(User user);
}

