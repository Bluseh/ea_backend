package com.extrace.server.service;

import com.extrace.server.dao.AddressDao;
import com.extrace.server.pojo.Address;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AddressService {

    private static final Logger logger = LoggerFactory.getLogger(AddressService.class);

    @Autowired
    private AddressDao addressDao;

    public List<Address> getAllAddresses() { return addressDao.findAll(); }

    public List<Address> findAddressesByCustomerId(Integer customerId) {
        return addressDao.findAddressesByCustomerId(customerId);
    }

    @Transactional
    public void saveAddressByCustomerId(Integer customerId, String address, String region_code, String name, String tel) {
        logger.info(customerId + address + "inserted");
        addressDao.saveAddressByCustomerId(customerId, address, region_code, name, tel);
    }

    @Transactional
    public void deleteAddressByCustomerIdAndAddress(Integer customerId, String address) {
        logger.info(customerId + address + "deleted");
        addressDao.deleteAddressByCustomerIdAndAddress(customerId, address);
    }

}
