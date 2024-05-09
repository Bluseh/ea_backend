package com.extrace.server.dao;

import com.extrace.server.pojo.Transhistory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TranshistoryDao extends JpaRepository<Transhistory,Integer> {
    public Transhistory findById(int id);
    public List<Transhistory> findByEid(String eid);
}
