package com.extrace.server.service;

import com.extrace.server.dao.PermissionDao;
import com.extrace.server.pojo.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionService {
    @Autowired
    PermissionDao permissionDao;
    public List<Permission> findAll() {
        return permissionDao.findAll();
    }
    public Permission findById(int id) {
        return permissionDao.findById(id);
    }
}
