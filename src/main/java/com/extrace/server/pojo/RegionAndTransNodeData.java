package com.extrace.server.pojo;

import java.util.List;

public class RegionAndTransNodeData {
    public RegionAndTransNodeData(String id, String name){
        this.id = id;
        this.name = name;
    }
    public RegionAndTransNodeData(){

    }
    private String id;
    private String name;
    private List<RegionAndTransNodeData> list;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<RegionAndTransNodeData> getList() {
        return list;
    }

    public void setList(List<RegionAndTransNodeData> list) {
        this.list = list;
    }
}
