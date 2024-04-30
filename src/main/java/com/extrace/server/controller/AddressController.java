package com.extrace.server.controller;

import com.extrace.server.pojo.Address;
import com.extrace.server.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

@RestController
public class AddressController {

    @Autowired
    private AddressService addressService;

    @GetMapping(value = "/Misc/AddressList/getAddressListByCustomerId/{customerId}")
    public List<Address> getAddressesByCustomerId(@PathVariable Integer customerId, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return addressService.findAddressesByCustomerId(customerId);
    }

    @GetMapping(value = "/Misc/AddressList/saveAddressByCustomerId")
    public void saveAddressByCustomerId(@RequestParam("param") String param,
                                    @RequestParam("id") Integer customerId, @RequestParam("regioncode") String region_code,
                                    @RequestParam("name") String name, @RequestParam("tel") String tel,
                                    HttpServletResponse response) throws UnsupportedEncodingException {

        // UTF-8手动解析出错，只好使用MVC自动解析
        addressService.saveAddressByCustomerId(customerId, param, region_code, name, tel);
        response.addHeader("state", "insert_success");
    }

    @GetMapping(value = "/Misc/AddressList/deleteAddressByCustomerId")
    public void deleteAddressByCustomerIdAndAddress(@RequestParam("param") String param,
                                    @RequestParam("id") Integer customerId,
                                    HttpServletResponse response) throws UnsupportedEncodingException {

        // UTF-8手动解析出错，只好使用MVC自动解析
        addressService.deleteAddressByCustomerIdAndAddress(customerId, param);
        response.addHeader("state", "delete_success");
    }

}

