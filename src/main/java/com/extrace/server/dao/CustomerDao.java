package com.extrace.server.dao;

import com.extrace.server.pojo.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerDao extends JpaRepository<Customer, Integer>{
    public List<Customer> findByNameLike(String name);
    public Customer findByTelCode(String telCode);
    public Customer findById(int id);
    public List<Customer> findAll();
    public List<Customer> findByNameContaining(String name);
    public Customer save(Customer c);

}
