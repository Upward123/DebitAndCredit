package com.duoModule.mapper;

import com.duoModule.domain.Logininfo;import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginMapper {
    int insertLogininfo(Logininfo logininfo);
    List<Logininfo> selectAll();
    int deleteLogininfoById(int id);

    int updateLogininfoById(Logininfo logininfo);
    /**
     * 新用户注册
     *
     * @param logininfo
     *
     */
    int insert(Logininfo logininfo);
    /**
     * 根据用户名查询用户数量
     *
     * @param username
     * @return int
     */
    int selectCountByUsername(String username);
    /**
     * 查询用户名和密码是否匹配
     *
     * @param logininfo
     * @return int
     */
    Logininfo selectUsernameAndPassword(Logininfo logininfo);
    /**
     * 用户登录
     *
     * @param username
     * @param password
     * @return
     */
    Logininfo toPerson(@Param("username") String username,
                    @Param("password") String password);
}
