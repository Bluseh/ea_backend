package com.extrace.server.controller;

import com.extrace.server.pojo.User;
import com.extrace.server.realm.MyToken;
import com.extrace.server.service.UserService;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class LoginAndRegisterController {
    @Autowired
    UserService userService;
    @PostMapping(value = "/Misc/login")
    public User login(@RequestBody User user, HttpServletResponse response){
        User u = userService.findByTelCode(user.getTelCode());
        if(u == null){
            //未找到用户名
            response.addHeader("state","verify_fail");

            return null;
        }else{
            //找到用户名
            Subject subject = SecurityUtils.getSubject();
            MyToken myToken = new MyToken(user.getTelCode(), user.getPassword(), 1);
//            UsernamePasswordToken myToken = new UsernamePasswordToken(user.getTelCode(), user.getPassword());
            try {
                subject.login(myToken);
                response.addHeader("state","verify_success");
                u.setSalt(null);
                u.setPassword(user.getPassword());
                return u;
            } catch (AuthenticationException e) {
                response.addHeader("state","verify_fail");
                return null;
            }
        }
    }
    @GetMapping("/Domain/logout")
    public void logout(HttpServletResponse response) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        response.addHeader("state","logout_success");
        return;
    }
    @PostMapping(value = "/Misc/register")
    public User register(@RequestBody User user, HttpServletResponse response){
        User u = userService.findByTelCode(user.getTelCode());
        if(u == null){
            String plain = user.getPassword();
            // 生成盐,默认长度 16 位
            String salt = new SecureRandomNumberGenerator().nextBytes().toString();
            // 设置 hash 算法迭代次数
            int times = 2;
            // 得到 hash 后的密码
            String encodedPassword = new SimpleHash("md5", plain, salt, times).toString();
            user.setSalt(salt);
            user.setPassword(encodedPassword);
            //注册的用户不存在
            userService.save(user);
            user.setSalt(null);
            user.setPassword(plain);
            response.addHeader("state","create_success");
            return user;
        }
        else{
            //注册的用户已经存在
            response.addHeader("state","create_fail");
            return null;
        }
    }

}
