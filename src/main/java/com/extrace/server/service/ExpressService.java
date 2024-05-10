package com.extrace.server.service;

import com.extrace.server.dao.ExpressDao;
import com.extrace.server.pojo.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class ExpressService {
    @Autowired
    ExpressDao expressDao;
    @Autowired
    UserService userService;
    @Autowired
    CustomerService customerService;
    @Autowired
    TranspackagecontentService transpackagecontentService;
    @Autowired
    TranspackageService transpackageService;
    @Autowired
    TransnodeService transnodeService;
    public void addInfo(Express express) {
        if (express == null) {
            return;
        }
        if (express.getSender() != null) {
            Customer customer = customerService.findById(express.getSender());
//            customerService.deleteInfo(customer);
            customerService.addInfo(customer);
            express.setSnd(customer);
        }
        if (express.getReceiver() != null) {
            Customer customer = customerService.findById(express.getReceiver());
//            customerService.deleteInfo(customer);
            customerService.addInfo(customer);
            express.setRcv(customer);
        }
        if (express.getPicker() != null) {
            User user = userService.findById(express.getPicker());
//            userService.deleteInfo(user);
            userService.addInfo(user);
            express.setPic(userService.findById(express.getPicker()));
        }
        if (express.getDeliver() != null) {
            User user = userService.findById(express.getDeliver());
//            userService.deleteInfo(user);
            userService.addInfo(user);
            express.setDlv(user);
        }
        if (express.getSigner() != null) {
            Customer customer = customerService.findById(express.getSigner());
//            customerService.deleteInfo(customer);
            customerService.addInfo(customer);
            express.setSig(customer);
        }
    }
    public List<Express> findAll() {
        return expressDao.findAll();
    }
    public Express findById(String id) {
        Express express = expressDao.findById(id);
        return express;
    }

    public List<Express> findExpressBySender(int sender) {
        return expressDao.findExpressBySender(sender);
    }

    public List<Express> findExpressByReceiver(int receiver) {
        return expressDao.findExpressByReceiver(receiver);
    }


    //111111111111111111111111111
    public List<Express> findSignedExpressByReceiver(int receiver) {
        return expressDao.findSignedExpressByReceiver(receiver);
    }
    //新增结束1111111111111111111111

    public List<Express> findMarkedExpressByReceiver(int receiver) {
        return expressDao.findMarkedExpressByReceiver(receiver);
    }



    public Express pickExpressById(String id, HttpServletResponse response) {  // 揽收快件
        Express express = findById(id);
        User user = userService.getCurrentUser();
        if(user.getRid() != 1){
            response.addHeader("state","permission_denied");
            return null;
        }
        if (express == null) {
            response.setHeader("state", "express_not_found");
            return null;
        }
        if (express.getPicker() != null) {
            response.setHeader("state", "express_picked");
            return express;
        }
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        express.setPickTime(timestamp);
        express.setPicker(user.getId());
        addInfo(express);
        Transnode transnode = transnodeService.findById(user.getNid());  // 获取当前网点
        if (express.getRcv().getRegionCode().equals(transnode.getRegionCode())) {
            express.setStatus(Express.STATUS.STATUS_WAIT_DELIVER);
        } else {
            express.setStatus(Express.STATUS.STATUS_PICKED);
        }
        save(express);
        response.setHeader("state", "pick_success");
        return express;
    }
    public Express deliverExpressById(String id, HttpServletResponse response) {
        Express express = findById(id);
        if (express == null) {
            response.setHeader("state", "express_not_found");
            return null;
        }
        if (express.getDeliver() != null && express.getDeliver() != userService.getCurrentUser().getId()) {
            response.setHeader("state", "express_delivering");
            return express;
        }else if(express.getDeliver() != null){
            addInfo(express);
            response.setHeader("state", "deliver_success");
            return express;
        }
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        express.setDeliverTime(timestamp);
        User user = userService.getCurrentUser();
        express.setDeliver(user.getId());
        express.setStatus(Express.STATUS.STATUS_DELIVERING);
        save(express);
        addInfo(express);
        response.setHeader("state", "deliver_success");
        return express;
    }
    public List<Express> getExpressesByPid(String id, HttpServletResponse response) {
        System.out.println(id);
        Transpackage transpackage = transpackageService.findById(id);
        List<Express> expresses = new ArrayList<>();
        List<Transpackagecontent> transpackagecontents = transpackagecontentService.findByPid(id);
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        }
        if(!transpackagecontents.isEmpty()){
            for (Transpackagecontent transpackagecontent : transpackagecontents) {
                Express express = findById(transpackagecontent.getEid());
                addInfo(express);
                expresses.add(express);
            }
        }else{
            response.setHeader("state", "read_success");
            return null;
        }
        response.setHeader("state", "read_success");
        return expresses;
    }
    public List<Express> getPermitExpressListByPid(String pid,HttpServletResponse response){
        Transpackage transpackage = transpackageService.findById(pid);
        if(transpackage == null){
            response.setHeader("state","transpackage_not_found");
            return null;
        }
        if(transpackage.getStatus() != Transpackage.STATUS.STATUS_ARRIVED){
            response.setHeader("state","permission_denied");
            return null;
        }
        User currentUser =  userService.getCurrentUser();
        if (currentUser == null){
            response.setHeader("state","permission_denied");
            return null;
        }else{
            if(!transpackage.getEndNode().equals(currentUser.getNid())){
                response.setHeader("state","permission_denied");
                return null;
            }
        }
        return getExpressesByPid(pid,response);
    }
    public List<Express> getWaitDeliverExpressList(HttpServletResponse response){
        User currentUser = userService.getCurrentUser();
        if(currentUser.getRid() != 1){
            response.setHeader("state","permission_denied");
            return null;
        }
        List<Express> waitDeliverExpressList = expressDao.findByStatus(Express.STATUS.STATUS_WAIT_DELIVER);
        waitDeliverExpressList.addAll(expressDao.findByStatusAndDeliver(Express.STATUS.STATUS_DELIVERING,currentUser.getId()));
        if(waitDeliverExpressList.isEmpty()){
            response.setHeader("state","read_fail");
            return null;
        }else{
            List<Express> returnExpressList = new ArrayList<>();
            for (Express es:waitDeliverExpressList){
                addInfo(es);
                if(es.getRcv() != null){
                    if (es.getRcv().getRegionCode().equals(currentUser.getNid().substring(0,6))){
                        returnExpressList.add(es);
                    }
                }
            }
            if(returnExpressList.isEmpty()){
                System.out.println("hello3");
                response.setHeader("state","read_fail");
                return null;
            }else{
                for (Express express:returnExpressList){
                    System.out.println(express.toString());
                }
                response.setHeader("state","read_success");
                return returnExpressList;
            }
        }
    }
    public boolean signExpress(String eid,int cId,HttpServletResponse response){
        Express es = findById(eid);
        if (es == null){
            response.setHeader("state","read_fail");
            return false;
        }else{
            if(es.getStatus() == Express.STATUS.STATUS_SIGNED){
                response.setHeader("state","express_signed");
                return false;
            }
            if(es.getStatus() != Express.STATUS.STATUS_DELIVERING){
                response.setHeader("state","permission_denied");
                return false;
            }else{
                User user = userService.getCurrentUser();
                if(user.getRid() != 1){
                    response.addHeader("state","permission_denied");
                    return false;
                }else{
                    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
                    es.setStatus(Express.STATUS.STATUS_SIGNED);
                    es.setSigner(cId);
                    es.setSignTime(timestamp);
                    response.setHeader("state","sign_success");
                    save(es);
                    return true;
                }
            }
        }
    }
    public void save(Express express) {
        express.setPic(null);
        express.setDlv(null);
        System.out.println(express.toString());
        expressDao.save(express);
    }

    public String findEmptyId(Integer senderId) {
       Customer customer = customerService.findById(senderId);
       if (customer == null){
           return  null;
       }else {
           String queryString = "1"+customer.getRegionCode()+"00";
           return queryString+String.format("%06d", expressDao.coutByIdLike(queryString)+1);
       }
    }

    public List<Express> getFreeExpressList() {
        //找picker和pick_time为空的，如果为空则说明是待揽收
        List<Express> expressList = expressDao.findByPickerAndrAndReceiver();
        List<Express> expresses = new ArrayList<>();
        User user = userService.getCurrentUser();
        if(user != null && expressList != null){
            Transnode transnode = transnodeService.findById(user.getNid());
            //System.out.println("yyq\nyyq\nyyq\n"+expressList.toString());
            for(Express ex:expressList){
                addInfo(ex);
                Customer customerSnd = customerService.findById(ex.getSender());
                if(customerSnd != null && customerSnd.getRegionCode().equals(transnode.getRegionCode())){
                    //System.out.println("yyq\nyyq\nyyq\n"+customerSnd.toString());
                    expresses.add(ex);
                }
            }
        }else{
            return null;
        }
        if(expresses.isEmpty()){
            return null;
        }
        return expresses;
    }
    public List<ExpressTrack> getExpressTrackList(String id, HttpServletResponse response) {
        Express express = findById(id);
        if (express == null) {
            response.setHeader("state", "express_not_found");
            return null;
        }
        addInfo(express);
        List<ExpressTrack> expressTrackList = new ArrayList<>();
        if (express.getSigner() != null) {  // 签收人
            expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, express.getSignTime().toString(),
                    "快件已签收"));
        }
        if (express.getDeliver() != null) {  // 派送人
            expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, express.getDeliverTime().toString(),
                    "【" + express.getDlv().getTransnode().getName() + "】的快递员，" +
                            express.getDlv().getName() + "，电话:" + express.getDlv().getTelCode() + "，正在派件"));
        }
        // 获取快件相关的所有包裹内容
        List<Transpackagecontent> transpackagecontentList = transpackagecontentService.findByEid(id);
        Collections.reverse(transpackagecontentList);
        for (Transpackagecontent transpackagecontent : transpackagecontentList) {
            Transpackage transpackage = transpackageService.findById(transpackagecontent.getPid());
            transpackageService.addInfo(transpackage);
            if (transpackage.getEndTime() != null) {  // 包裹目的地
                expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, transpackage.getEndTime().toString(),
                        "快件到达【" + transpackage.getEndNodeName() + "】"));
            }
            if (transpackage.getStartTime() != null) {  // 包裹出发地
                expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, transpackage.getStartTime().toString(),
                        "快件离开【" + transpackage.getStartNodeName() + "】已发往【" +
                                transpackage.getEndNodeName() + "】"));
            }
        }
        if (express.getPicker() != null) {  // 揽收人
            addInfo(express);
            expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, express.getPickTime().toString(),
                    "【" + express.getPic().getTransnode().getName() + "】已揽件，投诉电话:" +
                            express.getPic().getTelCode()));
        }
        if (express.getSender() != null) {  // 发件人
            expressTrackList.add(new ExpressTrack(ExpressTrack.STATUS.TYPE_PAST, express.getCreateTime().toString(), "商品已经下单"));
        }
        response.setHeader("state", "get_track_list_success");
        return expressTrackList;
    }
}
