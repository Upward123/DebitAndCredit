package com.duoModule.controller;

import com.duoModule.domain.Account;
import com.duoModule.domain.Logininfo;
import com.duoModule.service.IAccountService;
import com.duoModule.service.ILogininfoService;
import com.duoModule.util.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/LR")
public class LogininfoController {

    @Autowired
    private ILogininfoService iLogininfoService;

    @Autowired
    private IAccountService accountService;

    @RequestMapping("checkUsername")
    @ResponseBody
    public boolean checkUsername(String username) {
        int count  = iLogininfoService.checkUsername(username);
        return count <= 0;
    }

    @RequestMapping("register")
    @ResponseBody
    public JSONResult register(String username, String password) {

//        System.err.println(username+"===="+password);
        JSONResult json = new JSONResult();
        try {
            iLogininfoService.register(username, password);
        } catch (RuntimeException re) {
            json.setSuccess(false);
            json.setMsg(re.getMessage());
        }
        return json;
    }

    @RequestMapping("login")
    @ResponseBody
    public Map<String,Object> login(String username, String password,HttpSession session) {
        Map<String,Object> map = new HashMap<>();

//        System.err.println(username+"===="+password);
        JSONResult json = new JSONResult();
        Logininfo logininfo = new Logininfo();
        logininfo.setUsername(username);
        logininfo.setPassword(password);
        logininfo.setUsertype(Logininfo.ADMIN_WEB);
        Logininfo logininfo1 = new Logininfo();
        Account account = new Account();
        int count = 0;
        try {
            logininfo1 = iLogininfoService.login(logininfo);
            session.setAttribute("logininfo",logininfo1);
            account = accountService.getAccountById(logininfo1.getId());
        } catch (RuntimeException re) {
            json.setSuccess(false);
            json.setMsg(re.getMessage());
            System.err.println(json);
        }
        Date date = new Date();
        String stringTime;
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        stringTime=sdf.format(date);

        List<String> list=new ArrayList<>();
        list.add(account.getUsableamount().toString());
        list.add(account.getFreezedamount().toString());
        list.add(account.getUnreceiveinterest().toString());
        list.add(account.getUnreceiveprincipal().toString());
        list.add(account.getUnreturnamount().toString());
        BigDecimal sum=new BigDecimal(0);
        for(String s:list) {
            sum = sum.add(new BigDecimal(s));
        }
        map.put("id",logininfo1.getId());
        map.put("username",logininfo1.getUsername());
        map.put("currentDate",stringTime);
        map.put("sum",sum);
        map.put("account",account);
        return map;

    }

    @RequestMapping("toPerson")
    @ResponseBody
    public JSONResult toPerson(String username, String password) {

//        System.err.println(username+"===="+password);
        JSONResult json = new JSONResult();
        try {
            iLogininfoService.toPerson(username, password);
        } catch (RuntimeException re) {
            json.setSuccess(false);
            json.setMsg(re.getMessage());
        }
        return json;
    }

    //    一个对应用户业务请求的方法
    @RequestMapping("/selectAll")
    //    查询
    public ModelAndView getSelectList(){

        System.err.println("AAAAAAAAAAAAAAAAAAaaaaaaa");
        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user");

        List<Logininfo> list = iLogininfoService.selectAll();
        System.out.println(list);

        mv.addObject("users",list);

        return mv;
    }

    @RequestMapping("insertLogininfo")
//    插入（添加）
    public ModelAndView getInsertList(Logininfo logininfo){
        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user");

//        Random r = new Random();
//        int id = r.nextInt(50);

//        user.setId(id);
        logininfo.setUsername("111");
        logininfo.setPassword("111");

        int flag = iLogininfoService.insertLogininfo(logininfo);


        List<Logininfo> list = iLogininfoService.selectAll();
        mv.addObject("users",list);


        return mv;
    }

    @RequestMapping("deleteLogininfoById")
//    删除
    public ModelAndView getDeleteList(int id){

        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user");

        int flag = iLogininfoService.deleteLogininfoById(id);

        List<Logininfo> list = iLogininfoService.selectAll();

        mv.addObject("users",list);

        return mv;
    }

    @RequestMapping("updateLogininfoById")
//    修改
//    getUpdateList 方法里面的形参 id 就是代表一个 key，要与url地址中传过来的key一致
    public ModelAndView getUpdateList(int id){

        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user");

        Logininfo logininfo = new Logininfo();
        logininfo.setId(id);
        logininfo.setUsername("改");
        logininfo.setPassword("改改改");

        int flag = iLogininfoService.updateLogininfoById(logininfo);

        List<Logininfo> list = iLogininfoService.selectAll();

        mv.addObject("users",list);

        return mv;
    }
}
