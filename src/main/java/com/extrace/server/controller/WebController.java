package com.extrace.server.controller;

import com.extrace.server.pojo.Customer;
import com.extrace.server.realm.MyToken;
import com.extrace.server.service.CustomerService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
<<<<<<< HEAD
=======
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
>>>>>>> 04e061e8602b0071bfeacdcf591973a5c4025557
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

<<<<<<< HEAD
=======

>>>>>>> 04e061e8602b0071bfeacdcf591973a5c4025557
import javax.servlet.http.HttpServletResponse;

@RestController
public class WebController {
    @Autowired
    private CustomerService customerService;

    @PostMapping("/Web/register")
    public Customer register(@RequestBody Customer customer, HttpServletResponse response) {
        Customer cst = customerService.findByTelCode(customer.getTelCode());
        if (cst == null) {
            String plain = customer.getPassword();
            String salt = new SecureRandomNumberGenerator().nextBytes().toString();
            // 设置 hash 算法迭代次数
            int times = 2;
            // 得到 hash 后的密码
            String encodedPassword = new SimpleHash("md5", plain, salt, times).toString();
            customer.setSalt(salt);
            customer.setPassword(encodedPassword);
            //注册的用户不存在
            customerService.save(customer);
            customer.setSalt(null);
            customer.setPassword(plain);
            response.addHeader("state","create_success");
            return customer;
        } else {
            response.addHeader("state","create_fail");
            return null;
        }
    }
    @PostMapping("/Web/login")
    public Customer login(@RequestBody Customer customer, HttpServletResponse response) {
        Customer cst = customerService.findByTelCode(customer.getTelCode());
        System.out.println("web login:"+customer.getName());
        if (cst == null) {
            System.out.println("customer doesn't exist");
            response.addHeader("state","verify_fail");
            return null;
        } else {
            Subject subject = SecurityUtils.getSubject();
            MyToken myToken = new MyToken(customer.getTelCode(), customer.getPassword(), 2);
//            UsernamePasswordToken myToken = new UsernamePasswordToken(customer.getTelCode(), customer.getPassword());
            try {
                subject.login(myToken);
                response.addHeader("state","verify_success");
                cst.setSalt(null);
                cst.setPassword(customer.getPassword());
                return cst;
            } catch (AuthenticationException e) {
                System.out.println("customer password is wrong");
                response.addHeader("state","verify_fail");
                return null;
            }
        }
    }
    @PostMapping("/App/register")
    public Customer appRegister(@RequestBody Customer customer,HttpServletResponse response){
        System.out.println(customer);
        Customer cst = customerService.findByTelCode(customer.getTelCode());
        if (cst == null) {
            String plain = customer.getPassword();
<<<<<<< HEAD
=======
            //BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            //String encodedPassword = passwordEncoder.encode(plain);
>>>>>>> 04e061e8602b0071bfeacdcf591973a5c4025557
            //String salt = new SecureRandomNumberGenerator().nextBytes().toString();
            // 设置 hash 算法迭代次数
            //int times = 2;
            // 得到 hash 后的密码
            //String encodedPassword = new SimpleHash("md5", plain, salt, times).toString();
            customer.setSalt(null);
            customer.setPassword(plain);
            //注册的用户不存在
            customerService.saveApp(customer);
            customer.setSalt(null);
            customer.setPassword(plain);
            response.addHeader("state","create_success");
            return customer;
        } else {
            response.addHeader("state","create_fail");
            return null;
        }
    }
    @PostMapping("/App/login")
    public Customer appLogin(@RequestBody Customer customer, HttpServletResponse response) {
        System.out.println(customer);
<<<<<<< HEAD
        Customer cst = customerService.findByTelCodeAndPassword(customer.getTelCode(),customer.getPassword());
        if (cst == null) {
            System.out.println("customer doesn't exist");
=======
        //BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        //String encodedPassword = passwordEncoder.encode(customer.getPassword());
        //System.out.println(customer.getTelCode() + encodedPassword);
        Customer cst = customerService.findByTelCodeAndPassword(customer.getTelCode(),customer.getPassword());
        if (cst == null) {
            System.out.println("customer doesn't exist or password wrong");
>>>>>>> 04e061e8602b0071bfeacdcf591973a5c4025557
            response.addHeader("state","verify_fail");
            return null;
        } else {
            //Subject subject = SecurityUtils.getSubject();
            //MyToken myToken = new MyToken(customer.getTelCode(), customer.getPassword(), 2);
//           } UsernamePasswordToken myToken = new UsernamePasswordToken(customer.getTelCode(), customer.getPassword());
            try {
                //subject.login(myToken);
                response.addHeader("state","verify_success");
                System.out.println("verify_success");
                cst.setSalt(null);
                cst.setPassword(customer.getPassword());
                return cst;
            } catch (AuthenticationException e) {
<<<<<<< HEAD
                System.out.println("customer password is wrong");
=======
                System.out.println("error");
>>>>>>> 04e061e8602b0071bfeacdcf591973a5c4025557
                response.addHeader("state","verify_fail");
                return null;
            }
        }
    }
}
