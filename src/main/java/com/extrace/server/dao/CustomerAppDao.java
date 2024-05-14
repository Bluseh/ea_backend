package com.extrace.server.dao;

import com.extrace.server.pojo.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CustomerAppDao extends JpaRepository<Customer, Integer> {

    @Transactional
    @Modifying
    @Query(nativeQuery = true, value = "insert into customer(name, telCode, password, salt, address,region_code) values (:#{#customer.name}, :#{#customer.telCode}, :#{#customer.password}, :#{#customer.salt}, :#{#customer.address}, :#{#customer.regionCode})")
    void saveCustomerByTelCode(@Param("customer") Customer customer);


    @Transactional
    @Modifying
    @Query(nativeQuery = true,value = "delete from address where userid = ?1 and address = ?2")
    void deleteAddressByUserIdAndAddress(Integer userId, String address);


    @Query(nativeQuery = true,value = "select * from customer where telCode = ?1")
    Customer findByTelCode(String telCode);

    @Query(nativeQuery = true,value = "select * from customer where telCode = ?1 and password = ?2")
    Customer findByTelCodeAndPassword(String telCode,String password);

}