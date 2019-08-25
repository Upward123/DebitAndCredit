package com.duoModule.service.impl;

import com.duoModule.domain.User;
import com.duoModule.mapper.UserMapper;
import com.duoModule.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 1.通过注解向spring声明这是一个service
 * 2.创建一个对应的mapper对象
 * 3.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List selectAll() {

        return userMapper.selectAll();
    }

    @Override
    public int insertUser(User user) {

        return userMapper.insertUser(user);
    }

    @Override
    public int deleteUserById(int id) {

        return userMapper.deleteUserById(id);
    }

    @Override
    public int updateUserById(User user) {

        return userMapper.updateUserById(user);
    }
}
