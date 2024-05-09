package com.extrace.server.dao;

import com.extrace.server.pojo.Express;
import org.hibernate.sql.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ExpressDao extends JpaRepository<Express,Integer> {
    List<Express> findAll();
    Express findById(String id);
    @Query(nativeQuery = true,value = "select count(*) from extrace_backup.express where id like concat(?1,'%')")
    public Integer coutByIdLike(String queryString);
    @Query(nativeQuery = true,value = "select * from express where picker is NULL and pick_time is NULL")
    List<Express> findByPickerAndrAndReceiver();
    @Query(nativeQuery = true,value = "select * from express where status = ?1")
    List<Express> findByStatus(int status);
    @Query(nativeQuery = true,value = "select * from express where status = ?1 and deliver = ?2")
    List<Express> findByStatusAndDeliver(int status,int deliver);

    @Query(nativeQuery = true,value = "select * from extrace_backup.express where sender = ?1")
    List<Express> findExpressBySender(int sender);

    @Query(nativeQuery = true,value = "select * from extrace_backup.express where receiver = ?1")
    List<Express> findExpressByReceiver(int receiver);


   //新增开始111111111111111111111
    @Query(nativeQuery = true,value = "select * from extrace_backup.express where receiver = ?1 and signer is not null")
    List<Express> findSignedExpressByReceiver(int receiver);


    //新增结束111111111111111111111
}
