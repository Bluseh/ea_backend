package com.extrace.server.service;

import com.extrace.server.dao.CustomerDao;
import com.extrace.server.pojo.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import com.extrace.server.dao.CustomerAppDao;
@Service
public class CustomerService {
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private CustomerAppDao customerAppDao;
    @Autowired
    private RegionService regionService;
    public void addInfo(Customer customer) {
        if (customer == null) {
            return;
        }
        if (customer.getRegionCode() != null) {
            customer.setRegion(regionService.findAllByRegionCode(customer.getRegionCode()));
        }
    }
    public void deleteInfo(Customer customer) {
        if (customer == null) {
            return;
        }
        customer.setSalt(null);
        customer.setPassword(null);
    }
    public List<Customer> findByName(String name) {
        return customerDao.findByNameLike(name);
    }
    public Customer findByTelCode(String telCode) {
        Customer byTelCode = customerDao.findByTelCode(telCode);
        if(byTelCode != null){
            System.out.println(byTelCode.toString());
        }
        else{
            System.out.println("customer is null");
        }
        return byTelCode;
    }
    public Customer findByTelCodeAndPassword(String telCode,String password) {
        Customer byTelCode = customerAppDao.findByTelCodeAndPassword(telCode,password);
        if(byTelCode != null){
            System.out.println(byTelCode.toString());
        }
        else{
            System.out.println("customer is null");
        }
        return byTelCode;
    }
    public List<Customer> findAllCustomer(){return customerDao.findAll();}

    public Customer save(Customer c) {
        if (c.getId()!=null){
            Customer existingCustomer = findById(c.getId());
            existingCustomer.setName(c.getName());
            existingCustomer.setTelCode(c.getTelCode());
            existingCustomer.setAddress(c.getAddress());
            existingCustomer.setRegionCode(c.getRegionCode());
            customerDao.save(existingCustomer);
            System.out.println("customer save success");
            return c;
        } else {
            customerDao.save(c);
            return c;
        }
    }
    public List<Customer> findByNameContaining(String name) {
        return customerDao.findByNameContaining(name);
    }
    public Customer findById(int id) {
        Customer customer = customerDao.findById(id);
        return customer;
    }
    public Customer deleteById(int id) {
        Customer c = findById(id);
        customerDao.delete(c);
        return c;
    }
    public Customer saveApp(Customer c) {
        customerAppDao.saveCustomerByTelCode(c);
        return c;
    }
}
