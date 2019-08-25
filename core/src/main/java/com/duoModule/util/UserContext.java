package com.duoModule.util;


import com.duoModule.domain.Logininfo;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 用于存放当前用户的上下文
 *
 * @author novo
 */
public class UserContext {


    public static final String USER_IN_SESSION = "logininfo";


    /**
     * web.xml 中提前配置 RequestContextListener 监听
     *
     * 通过 RequestContextHolder 获取 session
     *
     * @return session
     */
    private static HttpSession getSession() {
        ServletRequestAttributes threadAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = threadAttributes.getRequest();
        HttpSession session = request.getSession();
        return session;
    }

    public static void putLoginInfo(Logininfo loginInfo) {
        // 得到session,并把current放到session中
        getSession().setAttribute(USER_IN_SESSION, loginInfo);
    }

    public static Logininfo getLoginInfo() {

        return (Logininfo) getSession().getAttribute(USER_IN_SESSION);
    }

}
