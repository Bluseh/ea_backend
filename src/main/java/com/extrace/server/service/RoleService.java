package com.extrace.server.service;

import com.extrace.server.dao.RoleDao;
import com.extrace.server.pojo.CodeNamePair;
import com.extrace.server.pojo.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleService {
    @Autowired
    RoleDao roleDao;
    public List<Role> findAll() {
        return roleDao.findAll();
    }
    public List<CodeNamePair> findAllTrans() {
        return transform(findAll());
    }
    public Role findById(int id) {
        return roleDao.findById(id);
    }
    public List<CodeNamePair> transform(List<Role> roles) {
        List<CodeNamePair> res = new ArrayList<>();
        for (Role r : roles) {
            CodeNamePair c = new CodeNamePair();
            c.setCode(String.valueOf(r.getId()));
            c.setName(r.getName());
            res.add(c);
        }
        return res;
    }
}
