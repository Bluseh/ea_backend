package com.extrace.server.dao;

import com.extrace.server.pojo.Transnode;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TransnodeDao extends JpaRepository<Transnode,Integer> {
    List<Transnode> findAll();
    Transnode findById(String id);
    Transnode findByRegionCode(String regionCode);
}
