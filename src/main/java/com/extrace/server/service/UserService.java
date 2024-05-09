package com.extrace.server.service;

import com.extrace.server.dao.UserDao;
import com.extrace.server.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDao userDao;
    @Autowired
    TransnodeService transnodeService;
    @Autowired
    RoleService roleService;

    public User getCurrentUser() {
        User user;
        try {
            Subject subject = SecurityUtils.getSubject();
            String principal = subject.getPrincipal().toString();
            user = findByTelCode(principal);
        } catch (Exception e) {
            System.out.println("用户不存在"+e);
            return null;
        }
        return user;
    }

    public void addInfo(User user) {
        if (user == null) {
            return;
        }
        if (user.getNid() != null) {
            user.setTransnode(transnodeService.findById(user.getNid()));
        }
        if (user.getRid() != null) {
            user.setRole(roleService.findById(user.getRid()));
        }
    }
    public void deleteInfo(User user) {
        if (user == null) {
            return;
        }
        user.setSalt(null);
        user.setPassword(null);
        user.setUserName(null);
    }
    public User findByTelCode(String telCode) {
        return userDao.findByTelCode(telCode);
    }
    public User findByUserName(String userName) {
        return userDao.findByUserName(userName);
    }
    public User findById(int id) {
        User user = userDao.findById(id);
        return user;
    }
    public void save(User user) {
            userDao.save(user);
    }
}
