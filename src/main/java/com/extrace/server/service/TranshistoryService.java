package com.extrace.server.service;

import com.extrace.server.dao.TranshistoryDao;
import com.extrace.server.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Service
public class TranshistoryService {
    @Autowired
    TranshistoryDao transhistoryDao;
    @Autowired
    ExpressService expressService;
    @Autowired
    TranspackagecontentService transpackagecontentService;
    @Autowired
    TranspackageService transpackageService;
    @Autowired
    TransnodeService transnodeService;
    @Autowired
    CustomerService customerService;
    public Transhistory findById(int id) {
        return transhistoryDao.findById(id);
    }
    public List<Transhistory> findByEid(String eid) {
        return transhistoryDao.findByEid(eid);
    }

    public void save(List<Transhistory> transhistories) {
        for (Transhistory transhistory : transhistories) {
            save(transhistory);
        }
    }
    public void save(Transhistory transhistory) {
        transhistoryDao.save(transhistory);
    }
    public List<Transhistory> getTranshistoryListByEid(String eid, HttpServletResponse response) {
        Express express = expressService.findById(eid);
        if (express == null) {
            response.setHeader("state", "express_not_found");
            return null;
        }
        // 获取快件相关的所有包裹内容
        List<Transpackagecontent> transpackagecontentList = transpackagecontentService.findByEid(eid);
        // 获取快件相关的所有包裹
        List<Transpackage> transpackageList = new ArrayList<>();
        for (Transpackagecontent transpackagecontent : transpackagecontentList) {
            transpackageList.add(transpackageService.findById(transpackagecontent.getPid()));
        }

        // 获取快件的包裹历史路径
        List<Transhistory> transhistoryList = new ArrayList<>();
        //设置寄件客户
        express.setSnd(customerService.findById(express.getSender()));
        for (Transpackage transpackage : transpackageList) {
            Transnode transnode = transnodeService.findById(transpackage.getStartNode());
            int type = -1;
            //与寄件客户地址Code同，为寄件历史开始网点
            if (transnode.getRegionCode().equals(express.getSnd().getRegionCode())) {
                type = Transhistory.TYPE.START;
            } else {
                type = Transhistory.TYPE.TRANSFER;
            }
            //新建快件Transhistory实例并加入transhistoryList
            transhistoryList.add(new Transhistory(transnode.getLat(), transnode.getLon(), type));
        }
        // 获取最后一个包裹的目的地的纬度和经度
        Transpackage transpackage = transpackageList.get(transhistoryList.size() - 1);
        Transnode transnode = transnodeService.findById(transpackage.getEndNode());
        transhistoryList.add(new Transhistory(transnode.getLat(), transnode.getLon(),2));
        // 获取快件的派送历史路径，疑似无用
        //transhistoryList.addAll(findByEid(eid));
        //只有下一站是终点站才会显示终点
        if (express.getStatus() == Express.STATUS.STATUS_SIGNED) {
            transhistoryList.get(transhistoryList.size() - 1).setType(Transhistory.TYPE.END);
        }
        for (int i = 0; i < transhistoryList.size(); i++) {
            System.out.println("\nyyq\nTS:"+transhistoryList.get(i).toString());
        }

        response.setHeader("state", "get_list_success");
        //直接返回给前端没保存进数据库
        return transhistoryList;
    }
}
