package com.duoModule.service;

import com.duoModule.domain.Userinfo;

import javax.servlet.http.HttpSession;
import java.util.Map;

public interface IUserInfoService {



    Map<String, Object> getInfo(HttpSession session);

    int updateItem(Userinfo userinfo);
}
