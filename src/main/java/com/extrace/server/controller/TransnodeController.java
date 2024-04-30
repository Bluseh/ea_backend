package com.extrace.server.controller;

import com.extrace.server.pojo.CodeNamePair;
import com.extrace.server.pojo.Transnode;
import com.extrace.server.service.TransnodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class TransnodeController {
    @Autowired
    TransnodeService transnodeService;

    @GetMapping("/Misc/Transnode/getAllTransnodeList")
    public List<CodeNamePair> getAllTransnodeList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return transnodeService.findAllTrans();
    }
    @GetMapping("/Misc/Transnode/getTransnodeListByRegionCode/{regionCode}")
    public List<CodeNamePair> getTransnodeListByRegionCode(@PathVariable int regionCode, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return transnodeService.findByRegionCodeTrans(regionCode);
    }
    @GetMapping("/Misc/Transnode/getTransnodeById/{id}")
    public Transnode getTransnodeListById(@PathVariable String id, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return transnodeService.findById(id);
    }
}
