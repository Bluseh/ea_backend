package com.extrace.server.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name="transhistory")
public class Transhistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String eid;
    private Double lat;
    private Double lon;
    @Transient
    private int type;
    public Transhistory() {}
    public Transhistory(Double lat, Double lon) {
        this.lat = lat;
        this.lon = lon;
    }

    public Transhistory(Double lat, Double lon, int type) {
        this.lat = lat;
        this.lon = lon;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
        this.lat = lat;
    }

    public Double getLon() {
        return lon;
    }

    public void setLon(Double lon) {
        this.lon = lon;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public static final class TYPE {
        public static final int START = 1;  // 出发地
        public static final int END = 2;  // 结束地
        public static final int TRANSFER = 3; // 中转站
    }
    @Override
    public String toString() {
        return "Transhistory{" +
                "id=" + id +
                ", eid='" + eid + '\'' +
                ", lat=" + lat +
                ", lon=" + lon +
                ", type=" + type +
                '}';
    }
}
