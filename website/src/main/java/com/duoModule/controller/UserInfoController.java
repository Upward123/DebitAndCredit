package com.duoModule.controller;


import com.duoModule.domain.Logininfo;
import com.duoModule.domain.Systemdictionaryitem;
import com.duoModule.domain.Userinfo;
import com.duoModule.dto.UserInfoSaveDto;
import com.duoModule.service.IUserInfoService;
import com.duoModule.util.BitStatesUtils;
import com.duoModule.util.JSONResult;
import com.duoModule.util.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserInfoController {

    @Autowired
    private IUserInfoService iUserInfoService;


    @RequestMapping("personMsg")
    @ResponseBody
    public Map<String, Object> toUserInfo(Model model, HttpSession session) {

        Map<String, Object> map = null;
        map = iUserInfoService.getInfo(session);

        List<Object> list1 = new ArrayList<>();
        List<Object> list2 = new ArrayList<>();
        List<Object> list3 = new ArrayList<>();
        List<Object> list4 = new ArrayList<>();
        List<Object> list5 = new ArrayList<>();

        Userinfo userinfo = (Userinfo) map.get("userinfo");

        try{
            for (Systemdictionaryitem systemdictionaryitem : userinfo.getSystemdictionaryitems()) {
                if (systemdictionaryitem.getParentid() == 1) {
                    userinfo.setIncomegradeItem(systemdictionaryitem);
                    System.err.println(systemdictionaryitem.toString());
                }
                if (systemdictionaryitem.getParentid() == 2) {
                    userinfo.setEducationbackgroundItem(systemdictionaryitem);
                }
                if (systemdictionaryitem.getParentid() == 3) {
                    userinfo.setMarriageItem(systemdictionaryitem);
                }
                if (systemdictionaryitem.getParentid() == 4) {
                    userinfo.setKidcountItem(systemdictionaryitem);
                }
                if (systemdictionaryitem.getParentid() == 5) {
                    userinfo.setHouseconditionItem(systemdictionaryitem);
                }
            }
        }catch (Exception e){}




        Map<String, Object> transformMap = new HashMap<>();
//        transformMap.put("userinfo", userinfo);




        List<Systemdictionaryitem> systemdictionaryitems = (List<Systemdictionaryitem>) map.get("systemdictionaryitem");
        for (Systemdictionaryitem systemdictionaryitem : systemdictionaryitems) {
            if (systemdictionaryitem.getParentid() == 1) {
                    list1.add(systemdictionaryitem);
            }
            if (systemdictionaryitem.getParentid() == 2) {

                list2.add(systemdictionaryitem);
            }
            if (systemdictionaryitem.getParentid() == 3) {

                list3.add(systemdictionaryitem);
            }
            if (systemdictionaryitem.getParentid() == 4) {

                list4.add(systemdictionaryitem);
            }
            if (systemdictionaryitem.getParentid() == 5) {

                list5.add(systemdictionaryitem);
            }
        }

        Map<String,Object> userInfoItemMap1 = new HashMap<>();
        Map<String,Object> userInfoItemMap2 = new HashMap<>();
        Map<String,Object> userInfoItemMap3 = new HashMap<>();
        Map<String,Object> userInfoItemMap4 = new HashMap<>();
        Map<String,Object> userInfoItemMap5 = new HashMap<>();

        userInfoItemMap2.put("name", "income");
        userInfoItemMap2.put("value", list1);
        userInfoItemMap1.put("name","diplomas");
        userInfoItemMap1.put("value",list2);
        userInfoItemMap3.put("name","marry");
        userInfoItemMap3.put("value",list3);
        userInfoItemMap4.put("name","child");
        userInfoItemMap4.put("value",list4);
        userInfoItemMap5.put("name","house");
        userInfoItemMap5.put("value",list5);

        List<Map<String,Object>> list = new ArrayList<>();
        list.add(userInfoItemMap1);
        list.add(userInfoItemMap2);
        list.add(userInfoItemMap3);
        list.add(userInfoItemMap4);
        list.add(userInfoItemMap5);

        transformMap.put("result",list);
        try{
            transformMap.put("phonenumber",userinfo.getPhonenumber());
            transformMap.put("currentdiplomas",userinfo.getEducationbackgroundId());
            transformMap.put("currentmarry",userinfo.getMarriageId());
            transformMap.put("currentchild",userinfo.getKidcountId());
            transformMap.put("currenthouse",userinfo.getHouseconditionId());
            transformMap.put("currentincome",userinfo.getIncomegradeId());
            transformMap.put("userinfoId",userinfo.getId());
        }catch (Exception e){}




        return transformMap;
    }


    @RequestMapping("personMsgSave")
    @ResponseBody
    public Integer personMsgSave(@RequestBody UserInfoSaveDto userInfoSaveDto){

        Logininfo logininfo = UserContext.getLoginInfo();
        Userinfo userinfo = new Userinfo();

        userinfo.setId(logininfo.getId());
        userinfo.setPhonenumber(userInfoSaveDto.getPhonenumber());
        userinfo.setEducationbackgroundId(userInfoSaveDto.getCurrentdiplomas());
        userinfo.setKidcountId(userInfoSaveDto.getCurrentchild());
        userinfo.setMarriageId(userInfoSaveDto.getCurrentmarry());
        userinfo.setIncomegradeId(userInfoSaveDto.getCurrentincome());
        userinfo.setHouseconditionId(userInfoSaveDto.getCurrenthouse());
        // 设置状态码
        if ( !userinfo.getIsBasicInfo()) {
            userinfo.addState(BitStatesUtils.OP_USER_INFO);
        }


        int row = iUserInfoService.updateItem(userinfo);
        return row;
    }

}
