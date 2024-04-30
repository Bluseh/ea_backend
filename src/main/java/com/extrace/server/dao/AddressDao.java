package com.extrace.server.dao;

import com.extrace.server.pojo.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface AddressDao extends JpaRepository<Address, Integer> {
    @Query(nativeQuery = true,value = "select * from address where customerid=?1")
    List<Address> findAddressesByCustomerId(Integer customerId);

    List<Address> findAll();

    @Transactional
    @Modifying
    @Query(nativeQuery = true, value = "insert into address(customerid, address, region_code, name, tel_code) values (?1, ?2, ?3, ?4, ?5)")
    void saveAddressByCustomerId(Integer customerId, String address, String region_code, String name, String tel);

    @Transactional
    @Modifying
    @Query(nativeQuery = true, value = "delete from address where customerid = ?1 and address = ?2")
    void deleteAddressByCustomerIdAndAddress(Integer customerId, String address);

}

