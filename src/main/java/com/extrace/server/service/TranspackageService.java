package com.extrace.server.service;

import com.extrace.server.dao.TranspackageDao;
import com.extrace.server.pojo.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Service
public class TranspackageService {
    @Autowired
    TranspackageDao transpackageDao;
    @Autowired
    UserService userService;
    @Autowired
    ExpressService expressService;
    @Autowired
    TransnodeService transnodeService;
    @Autowired
    CustomerService customerService;
    @Autowired
    TranspackagecontentService transpackagecontentService;

    public void addInfo(Transpackage transpackage) {
        if (transpackage == null) {
            return;
        }
        Transnode startNode = transnodeService.findById(transpackage.getStartNode());
        if (startNode != null) {
            transpackage.setStartNodeName(startNode.getName());
        }
        Transnode endNode = transnodeService.findById(transpackage.getEndNode());
        if (endNode != null) {
            transpackage.setEndNodeName(endNode.getName());
        }
    }
    public Transpackage findById(String id) {
        return transpackageDao.findById(id);
    }

    public String createTranspackage(Transpackage transpackage) {
        User user = userService.getCurrentUser();
        if (user.getNid() == transpackage.getEndNode()) {
            return "create_fail";
        }
        String id = getNewId(user.getNid());
        transpackage.setId(id);
        transpackage.setCreater(user.getId());
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        transpackage.setCreateTime(timestamp);
        transpackage.setStartNode(user.getNid());
        transpackage.setStatus(Transpackage.STATUS.STATUS_CREATED);
        save(transpackage);
        addInfo(transpackage);
        return "create_success";
    }
    //根据登录用户获取包裹列表
    public List<Transpackage> findTranspackagesByCreater(){
        User user = userService.getCurrentUser();
        if(user != null) {
            List<Transpackage> transpackages = new ArrayList<>();
            List<Transpackage> createrTranspackages = transpackageDao.findTranspackagesByCreater(user.getId());
            List<Transpackage> arrivedTranspackages = transpackageDao.findArrivedTranspackages(user.getNid());
            if(createrTranspackages.isEmpty() && arrivedTranspackages.isEmpty()){
                return null;
            }else{
                if(!createrTranspackages.isEmpty()){
                    transpackages.addAll(createrTranspackages);
                }
                if (!arrivedTranspackages.isEmpty()){
                    transpackages.addAll(arrivedTranspackages);
                }
            }
            for (Transpackage ts:transpackages){
                addInfo(ts);
            }
            return transpackages;
        }else{
            return null;
        }
    }

    public Express addExpress(Transpackagecontent transpackagecontent, HttpServletResponse response) {
        Transpackage transpackage = findById(transpackagecontent.getPid());
        System.out.println(transpackage.toString());
        if (transpackage == null) {
            response.setHeader("state", "transpackage_not_found");
            return null;
        }
        Express express = expressService.findById(transpackagecontent.getEid());
        if (express == null) {
            response.setHeader("state", "express_not_found");
            return null;
        }
        if (!(express.getStatus() == Express.STATUS.STATUS_PICKED ||
                express.getStatus() == Express.STATUS.STATUS_UNSORTED)) {
            response.setHeader("state", "express_add_fail");
            return null;
        }
        Transnode tStartNode = transnodeService.findById(transpackage.getStartNode());  // 包裹开始网点
        Transnode tEndNode = transnodeService.findById(transpackage.getEndNode());  // 包裹结束网点
        Integer tStartType = tStartNode.getType();  // 包裹开始网点的类型
        Integer tEndType = tEndNode.getType();  // 包裹结束网点的类型
        String tStartRegion = tStartNode.getRegionCode();  // 包裹开始网点的区域码
        String tEndRegion = tEndNode.getRegionCode();  // 包裹结束网点的区域码
        String eReceiveRegion = customerService.findById(express.getReceiver()).getRegionCode();  // 快件收件人的区域码
        String eSndRegion = customerService.findById(express.getSender()).getRegionCode();  // 快件发件人的区域码
        if (tStartType == 3 && tEndType == 2) {  // 三级网点到二级网点
            if (!tStartRegion.equals(eSndRegion)) {  // 快件发件人不在该三级网点区域
                response.setHeader("state", "departure_diff");
                System.out.println(tStartRegion);
                System.out.println(eSndRegion);
                return null;
            }
            if (tStartRegion.equals(eReceiveRegion)) {  // 快件收件人在该三级网点所在区域
                response.setHeader("state", "destination_diff");
                return null;
            }
        } else if (tStartType == 2 && tEndType == 1) {  // 二级网点到一级网点
            if (!tStartRegion.substring(0, 4).equals(eSndRegion.substring(0, 4))) {  // 快件发件人不在该二级网点区域
                response.setHeader("state", "departure_diff");
                return null;
            }
            if (tStartRegion.substring(0, 4).equals(eReceiveRegion.substring(0, 4))) {  // 快件收件人在该二级网点所在区域
                response.setHeader("state", "destination_diff");
                return null;
            }
        } else if (tStartType == 1 && tEndType == 1) {  // 一级网点到一级网点
            if (!tStartRegion.substring(0, 2).equals(eSndRegion.substring(0, 2))) {  // 快件发件人不在该一级网点区域
                response.setHeader("state", "departure_diff");
                return null;
            }
            if (!tEndRegion.substring(0, 2).equals(eReceiveRegion.substring(0, 2))) {  // 快件收件人不在目的一级网点所在区域
                response.setHeader("state", "destination_diff");
                return null;
            }
        } else if (tStartType == 1 && tEndType == 2) {  // 一级网点到二级网点
            if (!tEndRegion.substring(0, 4).equals(eReceiveRegion.substring(0, 4))) {  // 快件收件人不在目的二级网点所在区域
                response.setHeader("state", "destination_diff");
                return null;
            }
        } else if (tStartType == 2 && tEndType == 3) {  // 二级网点到三级网点
            if (!tEndRegion.equals(eReceiveRegion)) {  // 快件收件人不在目的三级网点所在区域
                response.setHeader("state", "destination_diff");
                return null;
            }
        }
        transpackagecontentService.save(transpackagecontent);
        express.setStatus(Express.STATUS.STATUS_SORTED);
        expressService.save(express);
        response.setHeader("state", "add_success");
        return express;
    }

    public Transpackage packTranspackage(String id) {
        User user = userService.getCurrentUser();
        Transpackage transpackage = findById(id);
        if (transpackage == null) {
            return null;
        }
        transpackage.setPacker(user.getId());
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        transpackage.setPackTime(timestamp);
        transpackage.setStatus(Transpackage.STATUS.STATUS_PACKED);
        save(transpackage);
        addInfo(transpackage);
        return transpackage;
    }

    public Transpackage transportTranspackage(String id) {
        User user = userService.getCurrentUser();
        Transpackage transpackage = findById(id);
        if (transpackage == null) {
            return null;
        }
        transpackage.setTransporter(user.getId());
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        transpackage.setStartTime(timestamp);
        transpackage.setStatus(Transpackage.STATUS.STATUS_TRANSPORTING);
        save(transpackage);
        addInfo(transpackage);
        List<Transpackagecontent> transpackagecontentList = transpackagecontentService.findByPid(id);
        for(Transpackagecontent transpackagecontent: transpackagecontentList) {
            Express express = expressService.findById(transpackagecontent.getEid());
            express.setStatus(Express.STATUS.STATUS_TRANSPORTING);
            expressService.save(express);
        }
        return transpackage;
    }

    public Transpackage arriveTranspackage(String id) {
        User user = userService.getCurrentUser();
        Transpackage transpackage = findById(id);
        if (transpackage == null) {
            return null;
        }
        transpackage.setEnder(user.getId());
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        transpackage.setEndTime(timestamp);
        transpackage.setStatus(Transpackage.STATUS.STATUS_ARRIVED);
        save(transpackage);
        addInfo(transpackage);
        return transpackage;
    }

    public Transpackage unpackTranspackage(String id) {
        User user = userService.getCurrentUser();
        Transpackage transpackage = findById(id);
        if (transpackage == null) {
            return null;
        }
        transpackage.setUnpacker(user.getId());
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        transpackage.setUnpackTime(timestamp);
        transpackage.setStatus(Transpackage.STATUS.STATUS_UNPACKED);
        save(transpackage);
        addInfo(transpackage);
        List<Transpackagecontent> transpackagecontentList = transpackagecontentService.findByPid(id);
        Transnode endTransnode = transnodeService.findById(transpackage.getEndNode());  // 包裹目的网点
        for(Transpackagecontent transpackagecontent: transpackagecontentList) {
            Express express = expressService.findById(transpackagecontent.getEid());
            expressService.addInfo(express);
            if (express.getRcv().getRegionCode().equals(endTransnode.getRegionCode())) { // 快件已到达目的地
                express.setStatus(Express.STATUS.STATUS_WAIT_DELIVER);
            } else {  // 快件未到达目的地
                express.setStatus(Express.STATUS.STATUS_UNSORTED);
            }
            expressService.save(express);
        }
        return transpackage;
    }

    public String getNewId(String nid) {
        Integer sum = countByIdLike("2" + nid);
        System.out.println("sum is"+sum);
        return "2" + nid + String.format("%06d", sum + 1);
    }

    public Integer countByIdLike(String id) {
        return transpackageDao.countByIdLike(id);
    }

    public void save(Transpackage transpackage) {
        transpackageDao.save(transpackage);
    }
}
