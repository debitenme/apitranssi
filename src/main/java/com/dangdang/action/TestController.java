package com.dangdang.action;

import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangfan on 2017/7/8.
 */
@Controller
public class TestController {
    //private static final Logger logger = (Logger) LoggerFactory.getLogger(TestController.class);
    @RequestMapping("/ajTest")
    public ModelAndView index(){
       // logger.info("the first jsp pages");
        //返回一个index.jsp这个视图
        return new ModelAndView("ajTest");
    }
}

