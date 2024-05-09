package com.extrace.server.pojo;

import javax.persistence.*;

@Entity
@Table(name = "address")
public class Address {

    @Id
    private Integer id;

    @Column(name = "customerId")
    private Integer customerId;

    private String address;
    @Column(name = "region_code")
    private String regionCode;

    private String name;

    private String tel_code;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getTel_code() {
        return tel_code;
    }

    public void setTel_code(String tel_code) {
        this.tel_code = tel_code;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public void setRegionCode(String regionCode){this.regionCode=regionCode;}
    public String getRegionCode(){return regionCode;}

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", customerId='" + customerId + '\'' +
                ", address='" + address + '\'' +
                ", regionCode='" + regionCode + '\'' +
                ", name='" + name + '\'' +
                ", tel_code='" + tel_code + '\'' +
                '}';
    }


}

