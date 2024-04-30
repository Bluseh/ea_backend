package com.extrace.server.dao;

import com.extrace.server.pojo.RolePermission;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RolePermissionDao extends JpaRepository<RolePermission,Integer> {
    public RolePermission findByRid(int rid);
}
