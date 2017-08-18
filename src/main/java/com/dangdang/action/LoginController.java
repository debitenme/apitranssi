package com.dangdang.action;

import com.dangdang.pojo.UserInfo;
import com.dangdang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wangfan on 2017/7/27.
 */
@Controller

public class LoginController {
    @Autowired
    LoginService loginService;
    @RequestMapping("/login")
    public ModelAndView index(){
        return new ModelAndView("login").addObject("message",true);
    }

    @RequestMapping("/verify")
    public  ModelAndView verifyUserInfo( @RequestParam(value = "userName")String username,@RequestParam(value = "userPassword")String userPassword,HttpServletResponse response){

        UserInfo ui = new UserInfo();
        ui.setUserName(username);
        ui.setUserPassword(userPassword);
        boolean result = loginService.verifyUserInfo(ui);
        if(result) {
            return new ModelAndView("redirect:success");
        }else{

/*            response.setCharacterEncoding("UTF-8");
            try {
                response.getWriter().write("{\"message\":\"false\"}");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;*/
            //return new ModelAndView("redirect:login").addObject("message",false);
           return new ModelAndView("login").addObject("message",false);
        }
    }

    @RequestMapping("/success")
    public ModelAndView loginSuccess(){
        return new ModelAndView("success");
    }

}
