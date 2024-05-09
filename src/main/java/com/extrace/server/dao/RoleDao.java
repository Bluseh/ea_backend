package com.extrace.server.dao;

import com.extrace.server.pojo.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RoleDao extends JpaRepository<Role,Integer> {
    List<Role> findAll();
    Role findById(int id);
}
