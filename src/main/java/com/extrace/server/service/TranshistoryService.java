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
    @Autowired
    TranshistoryService transhistoryService;
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
                                                                                  //根据包裹号
            transpackageList.add(transpackageService.findById(transpackagecontent.getPid()));
        }
        //设置寄件客户（类）为快件号sender（int）对应（id）的Customer
        express.setSnd(customerService.findById(express.getSender()));
        System.out.println("yyq\n"+express.toString());
        List<Transhistory> transhistoryList = new ArrayList<>();
        // 获取快件的包裹历史路径
        if(transpackagecontentList.size()!=0){
            for (Transpackage transpackage : transpackageList) {
                //获取包裹开始（出发）网点
                Transnode transnode = transnodeService.findById(transpackage.getStartNode());
                int type = -1;
                //与寄件客户RegionCode同，为寄件历史开始网点
                if (transnode.getRegionCode().equals(express.getSnd().getRegionCode())) {
                    type = Transhistory.TYPE.START;
                } else {
                    //与寄件客户RegionCode不同同，为寄件历史转运网点
                    type = Transhistory.TYPE.TRANSFER;
                }
                //新建快件Transhistory实例并加入transhistoryList
                transhistoryList.add(new Transhistory(transnode.getLat(), transnode.getLon(), type));
            }
            // 获取最后一个包裹的目的地
            // （快件只是下单没有揽收并打包，不会有package，transhistoryList为空，会报错*********）
            Transpackage transpackage = transpackageList.get(transhistoryList.size() - 1);
            //先设为转运网点，之后判断：如果快件的被签收，说明为终点网点
            Transnode transnode = transnodeService.findById(transpackage.getEndNode());
            transhistoryList.add(new Transhistory(transnode.getLat(), transnode.getLon(),3));
            // 获取快件的派送历史路径，疑似无用
            //transhistoryList.addAll(findByEid(eid));
            //只有下一站是终点站才会显示终点
            if (express.getStatus() == Express.STATUS.STATUS_SIGNED) {
                transhistoryList.get(transhistoryList.size() - 1).setType(Transhistory.TYPE.END);
            }
            for (int i = 0; i < transhistoryList.size(); i++) {
                System.out.println("\nyyq\nTS:"+transhistoryList.get(i).toString());
            }

        }else {

            Transnode transnode = transnodeService.findByRegionCode(express.getSnd().getRegionCode());
            transhistoryList.add(new Transhistory(transnode.getLat(),transnode.getLon(),1));
        }
        for (int i = 0; i < transhistoryList.size(); i++) {
            System.out.println("yyq\ntranshistory:"+transhistoryList.get(i));
        }
        response.setHeader("state", "get_list_success");
        //直接返回给前端没保存进数据库
//        //测试
//        List<Transhistory> transhistoryList1 = transhistoryService.findByEid("134010200000001");
//        System.out.println("yyq\n"+transhistoryList1.toString());
        return transhistoryList;
    }

}
