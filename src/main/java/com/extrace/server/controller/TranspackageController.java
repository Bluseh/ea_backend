package com.extrace.server.controller;

import com.extrace.server.pojo.Express;
import com.extrace.server.pojo.Transpackage;
import com.extrace.server.pojo.Transpackagecontent;
import com.extrace.server.service.TranspackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class TranspackageController {
    @Autowired
    TranspackageService transpackageService;

    @PostMapping("/Domain/Transpackage/createTranspackage")  // 包裹创建
    public Transpackage saveTranspackage(@RequestBody Transpackage transpackage, HttpServletResponse response) {
        String state = transpackageService.createTranspackage(transpackage);
        response.setHeader("state", state);
        System.out.println(transpackage.toString());
        return transpackage;
    }
    @PostMapping("/Domain/Transpackage/addExpress")  // 包裹中添加快件
    public Express addExpress(@RequestBody Transpackagecontent transpackagecontent, HttpServletResponse response) {
        return transpackageService.addExpress(transpackagecontent, response);
    }
    @GetMapping("/Domain/Transpackage/getTranspackagesByCreater")
    public List<Transpackage> getTranspackagesByCreater(HttpServletResponse response){
        List<Transpackage> transpackages = transpackageService.findTranspackagesByCreater();
        if(transpackages == null){
            response.setHeader("state","read_fail");
            return null;
        }else{
            response.setHeader("state","read_success");
            return transpackages;
        }
    }
    @GetMapping("/Domain/Transpackage/packTranspackage/{id}")  // 包裹打包
    public Transpackage packTranspackage(@PathVariable String id, HttpServletResponse response) {
        Transpackage transpackage = transpackageService.packTranspackage(id);
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        } else {
            response.setHeader("state", "pack_success");
            return transpackage;
        }
    }
    @GetMapping("/Domain/Transpackage/transportTranspackage/{id}")  // 包裹运输
    public Transpackage transportTranspackage(@PathVariable String id, HttpServletResponse response) {
        Transpackage transpackage = transpackageService.transportTranspackage(id);
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        } else {
            response.setHeader("state", "transport_success");
            return transpackage;
        }
    }
    @GetMapping("/Domain/Transpackage/arriveTranspackage/{id}")  // 包裹到达
    public Transpackage arriveTranspackage(@PathVariable String id, HttpServletResponse response) {
        Transpackage transpackage = transpackageService.arriveTranspackage(id);
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        } else {
            response.setHeader("state", "arrive_success");
            return transpackage;
        }
    }
    @GetMapping("/Domain/Transpackage/unpackTranspackage/{id}")  // 包裹拆包
    public Transpackage unpackTranspackage(@PathVariable String id, HttpServletResponse response) {
        Transpackage transpackage = transpackageService.unpackTranspackage(id);
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        } else {
            response.setHeader("state", "unpack_success");
            return transpackage;
        }
    }
}
