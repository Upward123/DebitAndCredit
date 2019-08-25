package com.duoModule.service;

import com.duoModule.domain.User;

import java.util.List;


public interface IUserService {
    public List selectAll();
    public int insertUser(User user);
    public int deleteUserById(int id);
    public int updateUserById(User user);
}
