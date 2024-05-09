package com.extrace.server.service;

import com.extrace.server.dao.TransnodeDao;
import com.extrace.server.pojo.CodeNamePair;
import com.extrace.server.pojo.RegionAndTransNodeData;
import com.extrace.server.pojo.Transnode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TransnodeService {
    @Autowired
    TransnodeDao transnodeDao;
    @Autowired
    RegionService regionService;
    private void addInfo(Transnode transnode) {
        if (transnode == null) {
            return;
        }
        if (transnode.getRegionCode() != null) {
            transnode.setRegion(regionService.findAllByRegionCode(transnode.getRegionCode()));
        }
    }
    public List<Transnode> findAll() {
        return transnodeDao.findAll();
    }
    public List<CodeNamePair> findAllTrans() {
        return transform(findAll());
    }
    public Transnode findById(String id) {
        Transnode transnode = transnodeDao.findById(id);
        return transnode;
    }
    public Transnode findByRegionCode(String regionCode) {
        return transnodeDao.findByRegionCode(regionCode);
    }
    public List<CodeNamePair> findByRegionCodeTrans(int regionCode) {
        return null;
//        return transform(findByRegionCode(regionCode));
    }
    public RegionAndTransNodeData findByRegionCodeTransform(String regionCode){
        return transNodeToData(findByRegionCode(regionCode));
    }
    public List<RegionAndTransNodeData> transNodeToData(List<Transnode> transnodes){
        List<RegionAndTransNodeData> res = new ArrayList<>();
        for (Transnode n : transnodes) {
            RegionAndTransNodeData c = new RegionAndTransNodeData();
            c.setId(n.getId());
            c.setName(n.getName());
            res.add(c);
        }
        return res;
    }
    public RegionAndTransNodeData transNodeToData(Transnode transnode){
        //transnode结点必须存在
        if(transnode != null){
            RegionAndTransNodeData c = new RegionAndTransNodeData();
            c.setId(transnode.getId());
            c.setName(transnode.getName());
            return c;
        }
        return null;
    }
    public List<CodeNamePair> transform(List<Transnode> transnodes) {
        List<CodeNamePair> res = new ArrayList<>();
        for (Transnode n : transnodes) {
            CodeNamePair c = new CodeNamePair();
            c.setCode(n.getId());
            c.setName(n.getName());
            res.add(c);
        }
        return res;
    }
}
