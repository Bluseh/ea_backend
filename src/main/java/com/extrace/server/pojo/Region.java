package com.extrace.server.pojo;

import javax.persistence.*;

@Entity
@Table(name = "region")
public class Region {
    @Id
    @Column(name = "region_code")
    private String regionCode;
    private String prv;
    private String cty;
    private String twn;
    private Integer type;

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public String getPrv() {
        return prv;
    }

    public void setPrv(String prv) {
        this.prv = prv;
    }

    public String getCty() {
        return cty;
    }

    public void setCty(String cty) {
        this.cty = cty;
    }

    public String getTwn() {
        return twn;
    }

    public void setTwn(String twn) {
        this.twn = twn;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
