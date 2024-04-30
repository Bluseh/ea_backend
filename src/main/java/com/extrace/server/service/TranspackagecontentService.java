package com.extrace.server.service;

import com.extrace.server.dao.TranspackageDao;
import com.extrace.server.dao.TranspackagecontentDao;
import com.extrace.server.pojo.Transpackagecontent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TranspackagecontentService {
    @Autowired
    TranspackagecontentDao transpackagecontentDao;

    public List<Transpackagecontent> findByPid(String pid) {
        return transpackagecontentDao.findByPid(pid);
    }

    public List<Transpackagecontent> findByEid(String eid) {
        return transpackagecontentDao.findByEid(eid);
    }

    public void save(Transpackagecontent transpackagecontent) {
        transpackagecontentDao.save(transpackagecontent);
    }
}
