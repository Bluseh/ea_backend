package com.extrace.server.service;

import com.extrace.server.dao.RolePermissionDao;
import com.extrace.server.pojo.RolePermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RolePermissionService {
    @Autowired
    RolePermissionDao rolePermissionDao;
    public RolePermission findByRid(int rid) {
        return rolePermissionDao.findByRid(rid);
    }
}
