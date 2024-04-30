package com.extrace.server.dao;

import com.extrace.server.pojo.Transpackage;
import com.extrace.server.pojo.Transpackagecontent;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TranspackagecontentDao extends JpaRepository<Transpackagecontent,Integer> {
    public List<Transpackagecontent> findByPid(String pid);
    public List<Transpackagecontent> findByEid(String eid);
}
