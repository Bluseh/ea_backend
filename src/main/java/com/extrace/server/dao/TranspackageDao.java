package com.extrace.server.dao;

import com.extrace.server.pojo.Transpackage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TranspackageDao extends JpaRepository<Transpackage,Integer> {
    public Transpackage findById(String id);
    @Query(nativeQuery = true,value = "select count(*) from extrace.transpackage where id like concat(?1,'%')")
    public Integer countByIdLike(String id);
    @Query(nativeQuery = true,value = "select * from extrace.transpackage where creater = ?1 and status < 3")
    public List<Transpackage> findTranspackagesByCreater(Integer creater);
    @Query(nativeQuery = true,value = "select * from extrace.transpackage where status = 3 and end_node = ?1")
    public List<Transpackage> findArrivedTranspackages(String endNode);
}
