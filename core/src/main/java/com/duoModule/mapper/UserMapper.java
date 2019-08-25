package com.duoModule.mapper;

import com.duoModule.domain.User;

import java.util.List;

public interface UserMapper {
    int insertUser(User user);
    List selectAll();
    int deleteUserById(int id);
//    int updateUser(@Param("username") String username,@Param("id") int id);
    int updateUserById(User user);
}
