package com.extrace.server.dao;

import com.extrace.server.pojo.Permission;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PermissionDao extends JpaRepository<Permission,Integer> {
    List<Permission> findAll();
    Permission findById(int id);
}
