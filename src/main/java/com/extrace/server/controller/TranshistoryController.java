package com.extrace.server.controller;

import com.extrace.server.pojo.Transhistory;
import com.extrace.server.service.TranshistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class TranshistoryController {
    @Autowired
    TranshistoryService transhistoryService;

    @PostMapping("/Domain/Transhistory/saveTranshistoryList")
    public void saveTranshistoryList(@RequestBody List<Transhistory> transhistories, HttpServletResponse response) {
        transhistoryService.save(transhistories);
        response.setHeader("state", "save_list_success");
    }
    @GetMapping("/Domain/Transhistory/getTranshistoryListByEid/{eid}")
    public List<Transhistory> getTranshistoryListByEid(@PathVariable String eid, HttpServletResponse response) {
        return transhistoryService.getTranshistoryListByEid(eid, response);
    }
}
