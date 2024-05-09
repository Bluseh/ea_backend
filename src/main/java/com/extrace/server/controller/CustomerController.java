package com.extrace.server.controller;

import com.extrace.server.pojo.Customer;
import com.extrace.server.service.CustomerService;
import com.extrace.server.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestController
public class CustomerController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private RoleService roleService;
    @Autowired
    WebApplicationContext applicationContext;

    @GetMapping("/getParam")
    public String getParam(){

        RequestMappingHandlerMapping mapping = applicationContext.getBean(RequestMappingHandlerMapping.class);
        // 拿到Handler适配器中的全部方法
        Map<RequestMappingInfo, HandlerMethod> methodMap = mapping.getHandlerMethods();
        List<String> urlList = new ArrayList<>();
        for (RequestMappingInfo info : methodMap.keySet()){

            Set<String> urlSet = info.getPatternsCondition().getPatterns();
            // 获取全部请求方式
            Set<RequestMethod> Methods = info.getMethodsCondition().getMethods();
            System.out.println(Methods.toString());
            for (String url : urlSet){
                // 加上自己的域名和端口号，就可以直接调用
                urlList.add("http://localhost:XXXX"+url);
            }
        }
        return urlList.toString();
    }
//    @GetMapping(value = "/Misc/Customer/getCustomerListByName")
//    public List<Customer> getCustomerListByName(String name, HttpServletResponse response) {
//        response.addHeader("state", "read_success");
//        return customerService.findByName(name);
//    }
    @GetMapping(value = "/Misc/Customer/getCustomerListByTelCode/{telCode}")
    public Customer getCustomerListByTelCode(@PathVariable String telCode, HttpServletResponse response) {
        System.out.println(telCode);
        response.addHeader("state", "read_success");
        return customerService.findByTelCode(telCode);
    }
    @GetMapping(value = "/Misc/Customer/getCustomerNameList")
    public List<Customer> getCustomerList(HttpServletResponse response){
        response.addHeader("state","read_success");
        return customerService.findAllCustomer();
    }
    @PostMapping(value = "/Misc/Customer/saveCustomerInfo")
    public Customer saveCustomerInfo(@RequestBody Customer c, HttpServletResponse response) {
        response.addHeader("state", "create_success");
        return customerService.save(c);
    }
    @GetMapping(value = "/Misc/Customer/getCustomerListByName")
    public List<Customer> findByNameContaining(String name, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return customerService.findByNameContaining(name);
    }

    @GetMapping(value = "/Misc/Customer/getCustomerByTelCode/{telCode}")
    public boolean getCustomerByTelCode(@PathVariable String telCode, HttpServletResponse response) {
        Customer c = customerService.findByTelCode(telCode);
        if (c!=null){
            response.addHeader("state","same_telcode");
            System.out.println("customer telcode is same:"+c.toString());
            return true;
        }else {
            response.addHeader("state","diff_telcode");
            System.out.println("customer telcode is diff");
            return false;
        }

    }


    @GetMapping(value = "/Misc/Customer/getCustomerInfo/{id}")
    public Customer getCustomerInfo(@PathVariable int id, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return customerService.findById(id);
    }
    @GetMapping(value = "/Misc/Customer/deleteCustomerInfo/{id}")
    public Customer deleteCustomerInfo(@PathVariable int id, HttpServletResponse response) {
        response.addHeader("state", "delete_success");
        return customerService.deleteById(id);
    }
    @GetMapping(value = "/Misc/Customer/saveCustomerInfo")
    public Customer deleteCustomerInfo(@RequestBody Customer c, HttpServletResponse response) {
        response.addHeader("state", "create_success");
        return customerService.save(c);
    }

}
