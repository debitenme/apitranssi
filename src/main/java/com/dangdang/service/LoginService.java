package com.dangdang.service;

import com.dangdang.pojo.UserInfo;
import org.springframework.stereotype.Service;

/**
 * Created by wangfan on 2017/7/27.
 */

public interface LoginService {
    public UserInfo getUserInfo();
    public boolean verifyUserInfo(UserInfo ui);
}
