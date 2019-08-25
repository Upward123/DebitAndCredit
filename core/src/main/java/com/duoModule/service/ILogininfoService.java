package com.duoModule.service;

import com.duoModule.domain.Logininfo;

import java.util.List;

public interface ILogininfoService {
    public int insertLogininfo(Logininfo logininfo);
    public List<Logininfo> selectAll();
    public int deleteLogininfoById(int id);
    public int updateLogininfoById(Logininfo logininfo);
    public int checkUsername(String username);
    public void register(String username,String password);
    public Logininfo login(Logininfo logininfo);
    public void toPerson(String username, String password);
}
