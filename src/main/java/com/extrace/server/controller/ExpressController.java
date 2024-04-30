package com.extrace.server.controller;

import com.extrace.server.pojo.Customer;
import com.extrace.server.pojo.Express;
import com.extrace.server.pojo.ExpressTrack;
import com.extrace.server.service.CustomerService;
import com.extrace.server.service.ExpressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class ExpressController {
    @Autowired
    ExpressService expressService;
    @Autowired
    CustomerService customerService;
    @GetMapping("/Domain/Express/pickExpress/{id}")
    public Express pickExpress(@PathVariable String id, HttpServletResponse response) {
        Express express = expressService.pickExpressById(id, response);
        return express;
    }
    @GetMapping("/Domain/Express/deliverExpress/{id}")
    public Express deliverExpress(@PathVariable String id, HttpServletResponse response) {
        Express express = expressService.deliverExpressById(id, response);
        return express;
    }
   @GetMapping("Domain/Express/signExpress")
   public boolean signExpress(String eId,String cTel,HttpServletResponse response){
        Customer cs = customerService.findByTelCode(cTel);
        if (cs == null){
            response.setHeader("state","customer_empty");
            return false;
        }else{
            if(expressService.signExpress(eId,cs.getId(),response)){
                return true;
            }else{
                return false;
            }
        }
   }
    @GetMapping("/Domain/Express/getExpressList")
    public List<Express> getExpressList(HttpServletResponse response) {
        return expressService.findAll();
    }
    @PostMapping("/Domain/Express/saveExpress")
    public Express saveExpress(@RequestBody Express express, HttpServletResponse response){
        String emptyExpreessId = expressService.findEmptyId(express.getSender());
        if(emptyExpreessId == null){
            response.addHeader("state","create_fail");
            return express;
        }
        else{

            express.setId(emptyExpreessId);
            expressService.save(express);
            response.addHeader("state","create_success");
            return express;
        }
    }
    @GetMapping("/Domain/Express/getExpressesByPid/{pid}")
    public List<Express> getExpressesByPid(@PathVariable String pid, HttpServletResponse response) {
        return expressService.getExpressesByPid(pid, response);

    }

    @GetMapping("/Domain/Express/getExpressesBySender/{sender}")
    public List<Express> getExpressesBySender(@PathVariable int sender, HttpServletResponse response) {
        return expressService.findExpressBySender(sender);
    }

    @GetMapping("/Domain/Express/getExpressesByReceiver/{receiver}")
    public List<Express> getExpressesByReceiver(@PathVariable int receiver, HttpServletResponse response) {
        return expressService.findExpressByReceiver(receiver);
    }

    @GetMapping("/Domain/Express/getPermitExpressListByPid/{pid}")
    public List<Express> getPermitExpressListByPid(@PathVariable String pid,HttpServletResponse response){
        return expressService.getPermitExpressListByPid(pid, response);
    }
    @GetMapping("/Domain/Express/getFreeExpressList")
    public List<Express> getFreeExpressList(HttpServletResponse response){
        if(expressService.getFreeExpressList() != null){
            response.addHeader("state","read_success");
            return expressService.getFreeExpressList();
        }else{
            response.addHeader("state","read_fail");
            return null;
        }
    }
    @GetMapping("/Domain/Express/getExpress/{id}")
    public Express getExpress(@PathVariable String id, HttpServletResponse response,HttpServletResponse request){
        Express express = expressService.findById(id);
        expressService.addInfo(express);
        if(express == null){
            response.addHeader("state","read_fail");
            return null;
        }
        response.addHeader("state","read_success");
        return express;
    }
    @GetMapping("/Domain/Express/getWaitDeliverExpressList")
    public List<Express> getWaitDeliverExpressList(HttpServletResponse response){
        return expressService.getWaitDeliverExpressList(response);
    }
    @GetMapping("/Domain/Express/getExpressTrackList/{id}")
    public List<ExpressTrack> getExpressTrackList(@PathVariable String id, HttpServletResponse response) {
        List<ExpressTrack> expressTrackList = expressService.getExpressTrackList(id, response);
        if (expressTrackList != null && !expressTrackList.isEmpty()) {
            expressTrackList.get(0).setType(ExpressTrack.STATUS.TYPE_CURRENT);
        }
        return expressTrackList;
    }
}
