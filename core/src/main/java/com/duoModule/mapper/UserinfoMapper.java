package com.duoModule.mapper;

import com.duoModule.domain.Userinfo;
import java.util.List;

public interface UserinfoMapper {
    int insert(Userinfo userinfo);
    Userinfo getUserInfoAndSystemdictionaryById(Integer id);

    int updateItem(Userinfo userinfo);
}