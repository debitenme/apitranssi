package com.dangdang.service.serviceProv;

import com.dangdang.pojo.UserInfo;
import com.dangdang.service.LoginService;
import org.springframework.stereotype.Service;



/**
 * Created by wangfan on 2017/7/27.
 */
@Service("loginService")
public class LoginServiceProv implements LoginService{
    @Override
    public UserInfo getUserInfo() {
        UserInfo ui = new UserInfo();
        ui.setUserName("wangfanjs");
        ui.setUserPassword("wangfanjs");
        return ui;
    }

    @Override
    public boolean verifyUserInfo(UserInfo ui) {
        UserInfo uiDb = this.getUserInfo();
        if(ui.getUserName().equals(uiDb.getUserName()) && ui.getUserPassword().equals(uiDb.getUserPassword())){
            return true;
        }else{
            return false;
        }

    }
}
