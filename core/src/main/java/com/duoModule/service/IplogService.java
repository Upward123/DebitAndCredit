package com.duoModule.service;

import com.duoModule.domain.Iplog;
import com.duoModule.dto.IplogQueryObject;
import com.duoModule.dto.PageResultSet;

public interface IplogService {
    int insertIplog(Iplog iplog);

    PageResultSet queryforPage(IplogQueryObject iplogQueryObject);
}
