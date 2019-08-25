package com.duoModule.service.impl;

import com.duoModule.domain.Logininfo;
import com.duoModule.domain.Userinfo;
import com.duoModule.mapper.SystemdictionaryitemMapper;
import com.duoModule.mapper.UserinfoMapper;
import com.duoModule.service.IUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Service
public class UserInfoServiceImpl implements IUserInfoService {

    @Autowired
    private UserinfoMapper userinfoMapper;

    @Autowired
    private SystemdictionaryitemMapper systemdictionaryitemMapper;

    @Override
    public Map<String, Object> getInfo(HttpSession session) {
        Map<String,Object> map = new HashMap<>();
        Logininfo logininfo = (Logininfo)session.getAttribute("logininfo");
//        判断是否有数据
        if(userinfoMapper.getUserInfoAndSystemdictionaryById(logininfo.getId())!=null){
            map.put("userinfo",userinfoMapper.getUserInfoAndSystemdictionaryById(logininfo.getId()));

        }
        else{
            map.put("userinfo",null);
        }
        map.put("systemdictionaryitem",systemdictionaryitemMapper.selectAll());
        return map;
    }

    @Override
    public int updateItem(Userinfo userinfo) {
        return userinfoMapper.updateItem(userinfo);
    }
}
