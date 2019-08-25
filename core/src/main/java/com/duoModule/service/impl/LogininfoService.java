package com.duoModule.service.impl;

import com.duoModule.domain.Account;
import com.duoModule.domain.Logininfo;
import com.duoModule.domain.Userinfo;
import com.duoModule.mapper.AccountMapper;
import com.duoModule.mapper.LoginMapper;
import com.duoModule.mapper.UserinfoMapper;
import com.duoModule.service.ILogininfoService;
import com.duoModule.util.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class LogininfoService implements ILogininfoService {

    @Autowired
    private LoginMapper loginMapper;

    @Autowired
    private AccountMapper accountMapper;

    @Autowired
    private UserinfoMapper userinfoMapper;

    /**
     * 新用户注册
     * @param username
     * @param password
     */
    @Override
    public void register(String username, String password) {
        /*
         * 逻辑思路
         * 1. 判断用户名是否存在
         * 2. 如果不存在,设值并保存这个对象
         * 3. 如果存在,直接抛错
         *
         */
        int count = checkUsername(username);

        if (count <= 0) {
            Logininfo li = new Logininfo();
            li.setUsername(username);
            li.setPassword(password);
            li.setState(Logininfo.STATE_NORMAL);
            li.setUsertype(1);
            loginMapper.insert(li);

            Integer id = li.getId();
            Account account = new Account();
            account.setId(id);
            accountMapper.insert(account);
            Userinfo userinfo = new Userinfo();
            userinfo.setId(id);
            userinfo.setRealname(username);
            userinfoMapper.insert(userinfo);


        } else {
            // 如果存在,直接抛错
            throw new RuntimeException("用户名已经存在!");
        }

    }

    /**
     * 检查用户名是否已存在
     *
     * @param username
     * @return 返回用户个数
     */
    @Override
    public int checkUsername(String username) {
        int count = loginMapper.selectCountByUsername(username);
        return count;
    }

    /**
     * 用户登录
     * @param logininfo
     *
     */
    @Override
    public Logininfo login(Logininfo logininfo) {
        /*
         * 逻辑思路
         * 1. 判断用户名是否存在
         * 2. 如果不存在,设值并保存这个对象
         * 3. 如果存在,直接抛错
         *
         */
        int count = checkUsername(logininfo.getUsername());

        if (count > 0) {
            return loginMapper.selectUsernameAndPassword(logininfo);
        } else {
            // 如果不存在,直接抛错
            throw new RuntimeException("用户名或密码错误，登录失败!");
        }

    }

    /**
     *
     * 用户登陆跳转到个人中心
     *
     * @param username
     * @param password
     */
    @Override
    public void toPerson(String username, String password) {
        Logininfo loginInfo = loginMapper.toPerson(username,password);
        if (loginInfo != null) {
            /* 将登录用户的数据，通过UserContext工具类，存放至session*/
            UserContext.putLoginInfo(loginInfo);
        } else {
            throw new RuntimeException("用户名或密码错误，登录失败!");
        }
    }

    @Override
    public List<Logininfo> selectAll(){
        return loginMapper.selectAll();
    }

    @Override
    public int insertLogininfo(Logininfo logininfo){
        return loginMapper.insertLogininfo(logininfo);
    }

    @Override
    public int deleteLogininfoById(int id){
        return loginMapper.deleteLogininfoById(id);
    }

    @Override
    public int updateLogininfoById(Logininfo logininfo){
        return loginMapper.updateLogininfoById(logininfo);
    }
}
