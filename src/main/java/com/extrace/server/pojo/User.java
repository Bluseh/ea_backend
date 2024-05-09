package com.extrace.server.pojo;

import javax.persistence.*;

@Entity
@Table(name="user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id  ;
    private String name;

    @Column(name = "user_name")
    private String userName;
    private String salt;
    private String password;

    @Column(name="telcode")
    private String telCode;
    private Integer status;
    @Column(name = "nid")
    private String nid;
    @Column(name = "rid")
    private Integer rid;
    @Transient
    private Transnode transnode;
    @Transient
    private Role role;

    public Transnode getTransnode() {
        return transnode;
    }

    public void setTransnode(Transnode transnode) {
        this.transnode = transnode;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTelCode() {
        return telCode;
    }

    public void setTelCode(String telCode) {
        this.telCode = telCode;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString(){
        StringBuilder userInfo = new StringBuilder();
        userInfo.append("UserInfo[");
        userInfo.append("User[ ");
        userInfo.append("Id=").append(getId()).append(" ");
        userInfo.append("Name=").append(getName()).append(" ");
        userInfo.append("Username=").append(getUserName()).append(" ");
        userInfo.append("Password=").append(getPassword()).append(" ");
        userInfo.append("TelCode=").append(getTelCode()).append(" ");
        userInfo.append("Status=").append(getStatus()).append(" ");
        userInfo.append("NId=").append(getNid()).append(" ");
        userInfo.append("RId=").append(getRid()).append(" ");
        userInfo.append("]");
        return userInfo.toString();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }
}
