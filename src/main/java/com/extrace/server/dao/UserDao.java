package com.extrace.server.dao;

import com.extrace.server.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Integer> {
    public User findByTelCode(String telCode);
    public User findByUserName(String userName);
    public User findById(int id);
}
