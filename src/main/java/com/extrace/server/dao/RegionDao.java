package com.extrace.server.dao;

import com.extrace.server.pojo.Region;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RegionDao extends JpaRepository<Region,Integer> {
    List<Region> findAll();
    List<Region> findByType(int type);
    Region findByRegionCode(String regionCode);
    @Query(nativeQuery = true, value = "select * from region where region_code like concat(?1, '%') and type = ?2")
    List<Region> findByRegionCodeLikeAndType(String regionCode, int type);
}
