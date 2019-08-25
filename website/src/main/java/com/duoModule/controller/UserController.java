package com.duoModule.controller;

import com.duoModule.domain.User;
import com.duoModule.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private IUserService iUserService;

//    一个对应用户业务请求的方法
    @RequestMapping("selectAll")
//    查询
    public ModelAndView getSelectList(){

        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user.jsp");

        List<User> list = iUserService.selectAll();

        mv.addObject("users",list);

        return mv;
    }

    @RequestMapping("insertUser")
//    插入（添加）
    public ModelAndView getInsertList(User user){
        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user.jsp");

//        Random r = new Random();
//        int id = r.nextInt(50);

//        user.setId(id);
        user.setUsername("111");
        user.setPassword("111");
        user.setPhonenum("111111");

        int flag = iUserService.insertUser(user);


        List<User> list = iUserService.selectAll();
        mv.addObject("users",list);


        return mv;
    }

    @RequestMapping("deleteUserById")
//    删除
    public ModelAndView getDeleteList(int id){

        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user.jsp");

        int flag = iUserService.deleteUserById(id);

        List<User> list = iUserService.selectAll();

        mv.addObject("users",list);

        return mv;
    }

    @RequestMapping("updateUserById")
//    修改
//    getUpdateList 方法里面的形参 id 就是代表一个 key，要与url地址中传过来的key一致
    public ModelAndView getUpdateList(int id){

        // 根据页面的名字创建 ModelAndView 的对象
        ModelAndView mv = new ModelAndView("user.jsp");

        User user = new User();
        user.setId(id);
        user.setUsername("改");
        user.setPassword("改改改");
        user.setPhonenum("改改改改改改");

        int flag = iUserService.updateUserById(user);

        List<User> list = iUserService.selectAll();

        mv.addObject("users",list);

        return mv;
    }



}
