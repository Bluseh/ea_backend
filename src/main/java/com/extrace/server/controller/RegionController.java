package com.extrace.server.controller;

import com.extrace.server.pojo.CodeNamePair;
import com.extrace.server.pojo.RegionAndTransNodeData;
import com.extrace.server.pojo.Transnode;
import com.extrace.server.service.RegionService;
import com.extrace.server.service.RoleService;
import com.extrace.server.service.TransnodeService;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RegionController {
    @Autowired
    private RegionService regionService;
    @Autowired
    private TransnodeService transnodeService;
    @Autowired
    private RoleService roleService;
    @GetMapping("/Misc/Region/getAllRegionList")
    public List<CodeNamePair> getAllRegionList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return regionService.findAllTrans();
    }
    @GetMapping("/Misc/Region/getAllRegionAndTransNodeList")
    public List<RegionAndTransNodeData> getAllRegionAndTransNodeList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
        //数据量太大啦，这里是为了测试
//        List<RegionAndTransNodeData> mProvinceListData = new ArrayList<>();
//
//        RegionAndTransNodeData jsPro = new RegionAndTransNodeData(10000, "江苏省");
//
//        RegionAndTransNodeData ycCity = new RegionAndTransNodeData(11000, "盐城市");
//        List<RegionAndTransNodeData> ycDistList = new ArrayList<>();
//        ycDistList.add(new RegionAndTransNodeData(11100, "滨海县"));
//        ycDistList.add(new RegionAndTransNodeData(11200, "阜宁县"));
//        ycDistList.add(new RegionAndTransNodeData(11300, "大丰市"));
//        ycDistList.add(new RegionAndTransNodeData(11400, "盐都区"));
//        ycCity.setList(ycDistList);
//        mProvinceListData.add(jsPro);
//        return mProvinceListData;

        return regionService.findAllRegionAndTransNodeList();
    }
    @GetMapping("/Misc/Region/getAllProvinceAndTransNodeList")
    public List<RegionAndTransNodeData> getProvinceAndTransNodeList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
       return regionService.findProvinceAndTransNodeList();
    }
    @GetMapping("/Misc/Region/getAllCityAndTransNodeList")
    public List<RegionAndTransNodeData> getAllCityAndTransNodeList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return regionService.findAllCityAndTransNodeList();
    }

    @GetMapping("/Misc/Region/getProvinceList")
    public List<CodeNamePair> getProvinceList(HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return regionService.findPrvTrans();
    }
    @GetMapping("/Misc/Region/getCityList/{regionCode}")
    public List<CodeNamePair> getCityList(@PathVariable String regionCode, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return regionService.findCtyByRegionCodeTrans(regionCode);
    }
    @GetMapping("/Misc/Region/getTownList/{regionCode}")
    public List<CodeNamePair> getTownList(@PathVariable String regionCode, HttpServletResponse response) {
        response.addHeader("state", "read_success");
        return regionService.findTwnByRegionCodeTrans(regionCode);
    }
}
