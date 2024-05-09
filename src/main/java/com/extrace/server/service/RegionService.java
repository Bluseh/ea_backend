package com.extrace.server.service;

import com.extrace.server.dao.RegionDao;
import com.extrace.server.pojo.CodeNamePair;
import com.extrace.server.pojo.Region;
import com.extrace.server.pojo.RegionAndTransNodeData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RegionService {
    @Autowired
    RegionDao regionDao;
    @Autowired
    TransnodeService transnodeService;
    public List<Region> findAll() {
        return regionDao.findAll();
    }
    public List<CodeNamePair> findAllTrans() {
        return transform(findAll());
    }
    public List<Region> findByType(int type) {
        return regionDao.findByType(type);
    }
    public Region findByRegionCode(String regionCode) {
        return regionDao.findByRegionCode(regionCode);
    }
    public Region findAllByRegionCode(String regionCode) {
        Region region = findByRegionCode(regionCode);
        if (region != null) {
            if (region.getType() >= 3) {
                String s = regionCode.substring(0, 4) + "00";
                Region r = findByRegionCode(s);
                if (r != null) {
                    region.setCty(r.getCty());
                }
            }
            if (region.getType() >= 2) {
                String s = regionCode.substring(0, 2) + "0000";
                Region r = findByRegionCode(s);
                if (r != null) {
                    region.setPrv(r.getPrv());
                }
            }
        }
        return region;
    }
    public List<Region> findByRegionCodeLikeAndType(String regionCode, int type) {
        return regionDao.findByRegionCodeLikeAndType(regionCode, type);
    }
    public List<Region> findPrv() {
        return regionDao.findByType(1);
    }
    public List<CodeNamePair> findPrvTrans() {
        return transform(findPrv());
    }
    public List<Region> findCty() {
        return regionDao.findByType(2);
    }
    public List<Region> findTwn() {
        return regionDao.findByType(3);
    }
    public List<Region> findCtyByRegionCode(String regionCode) {
        return findByRegionCodeLikeAndType(regionCode.substring(0, 2), 2);
    }
    public List<CodeNamePair> findCtyByRegionCodeTrans(String regionCode) {
        return transform(findCtyByRegionCode(regionCode));
    }
    public List<Region> findTwnByRegionCode(String regionCode) {
        return findByRegionCodeLikeAndType(regionCode.substring(0, 4), 3);
    }
    public List<CodeNamePair> findTwnByRegionCodeTrans(String regionCode) {
        return transform(findTwnByRegionCode(regionCode));
    }
    public List<CodeNamePair> transform(List<Region> regions) {
        List<CodeNamePair> res = new ArrayList<>();
        for (Region r : regions) {
            CodeNamePair c = new CodeNamePair();
            c.setCode(r.getRegionCode());
            if (r.getType() == 1) {
                c.setName(r.getPrv());
            } else if (r.getType() == 2) {
                c.setName(r.getCty());
            } else if (r.getType() == 3) {
                c.setName(r.getTwn());
            }
            res.add(c);
        }
        return res;
    }
    public List<RegionAndTransNodeData> transRegionToData(List<Region> regions){
        List<RegionAndTransNodeData> res = new ArrayList<>();
        for(Region r : regions){
            RegionAndTransNodeData c = new RegionAndTransNodeData();
            c.setId(r.getRegionCode());
            if (r.getType() == 1) {
                c.setName(r.getPrv());
            } else if (r.getType() == 2) {
                c.setName(r.getCty());
            } else if (r.getType() == 3) {
                c.setName(r.getTwn());
            }
            res.add(c);
        }
        return res;
    }
    public List<RegionAndTransNodeData> findAllRegionAndTransNodeList(){
        List<RegionAndTransNodeData> provinceList;
        List<RegionAndTransNodeData> cityList;
        List<RegionAndTransNodeData> townList;
        List<RegionAndTransNodeData> transNodeList;
        //获取省列表
        provinceList =transRegionToData(regionDao.findByType(1));
        for(RegionAndTransNodeData p:provinceList){
            //获取当前省的城市列表
            cityList = transRegionToData(findCtyByRegionCode(p.getId()));
            for(RegionAndTransNodeData c:cityList){
                //获取当前省当前市的区域
                townList = transRegionToData(findTwnByRegionCode(c.getId()));
                transNodeList = new ArrayList<>();
                for (RegionAndTransNodeData t:townList){
                    transNodeList.add(transnodeService.findByRegionCodeTransform(t.getId()));
                }
                c.setList(transNodeList);
            }
            p.setList(cityList);
        }
        return provinceList;
    }

    public List<RegionAndTransNodeData> findProvinceAndTransNodeList() {
        List<RegionAndTransNodeData> provinceList;
        List<RegionAndTransNodeData> transNodeList;
        //获取省列表
        provinceList = transRegionToData(regionDao.findByType(1));
        for (RegionAndTransNodeData p:provinceList){
            transNodeList = new ArrayList<>();
            transNodeList.add(transnodeService.findByRegionCodeTransform(p.getId()));
            p.setList(transNodeList);
        }
        return provinceList;
    }

    public List<RegionAndTransNodeData> findAllCityAndTransNodeList() {
        List<RegionAndTransNodeData> provinceList;
        List<RegionAndTransNodeData> transNodeList;
        List<RegionAndTransNodeData> cityList;
        //获取省列表
        provinceList = transRegionToData(regionDao.findByType(1));
        for(RegionAndTransNodeData p:provinceList){
            //获取当前省的城市列表
            cityList = transRegionToData(findCtyByRegionCode(p.getId()));
            for (RegionAndTransNodeData c:cityList){
                transNodeList = new ArrayList<>();
                transNodeList.add(transnodeService.findByRegionCodeTransform(c.getId()));
                c.setList(transNodeList);
            }
            p.setList(cityList);
        }
        return provinceList;
    }
}
