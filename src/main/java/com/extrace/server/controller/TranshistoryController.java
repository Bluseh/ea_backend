package com.extrace.server.controller;

import com.extrace.server.dao.ExpressDao;
import com.extrace.server.pojo.Express;
import com.extrace.server.pojo.Transhistory;
import com.extrace.server.service.ExpressService;
import com.extrace.server.service.TranshistoryService;
import com.extrace.server.websocket.WebSocketServerPlayBack;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class TranshistoryController {
    @Autowired
    TranshistoryService transhistoryService;
    @Autowired
    ExpressDao expressDao;


    @PostMapping("/Domain/Transhistory/saveTranshistoryList")
    public void saveTranshistoryList(@RequestBody List<Transhistory> transhistories, HttpServletResponse response) {
        transhistoryService.save(transhistories);
        response.setHeader("state", "save_list_success");
        String ExpresExpressId;
        Express express;
        String content;
        String senderTel;
        String receiverTel;
        if (transhistories.size()!=0){
            ExpresExpressId = transhistories.get(0).getEid();
            express=expressDao.findById(ExpresExpressId);
            senderTel=express.getSenderTel();
            receiverTel=express.getReceiverTel();
            //List<Transhistory> transhistoryList = transhistoryService.findByEid(ExpresExpressId);
            //System.out.println("yyq\n"+transhistoryList.toString());
            //WebSocketServerPlayBack.sendInfo(senderTel, transhistoryList.toString());
            for (int i = 0; i < transhistories.size(); i++) {
                WebSocketServerPlayBack.sendInfo(receiverTel, transhistories.get(i).toString());
            }

        }

    }
    @GetMapping("/Domain/Transhistory/getTranshistoryListByEid/{eid}")
    public List<Transhistory> getTranshistoryListByEid(@PathVariable String eid, HttpServletResponse response) {
        return transhistoryService.getTranshistoryListByEid(eid, response);
    }
}
