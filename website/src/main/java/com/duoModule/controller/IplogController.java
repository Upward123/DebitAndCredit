package com.duoModule.controller;


import com.duoModule.dto.IplogQueryObject;
import com.duoModule.service.IplogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class IplogController {

    @Autowired
    private IplogService iplogService;


    @RequestMapping("iplog")
    @ResponseBody
    public Map<String,Object> Iplog(@RequestBody IplogQueryObject iplogQueryObject){

        Map<String,Object> map = new HashMap<>();
        map.put("pageResultSet",iplogService.queryforPage(iplogQueryObject));

        IplogQueryObject iplogQueryObject1 = new IplogQueryObject();
        iplogQueryObject1.setBeginDate(iplogQueryObject.getBeginDate());
        iplogQueryObject1.setEndDate(iplogQueryObject.getEndDate());
        iplogQueryObject1.setState(iplogQueryObject.getState());

        map.put("iplogQueryObject", iplogQueryObject1);


        return map;


    }
}
