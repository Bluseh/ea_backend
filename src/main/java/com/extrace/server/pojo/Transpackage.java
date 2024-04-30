package com.extrace.server.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name="transpackage")
public class Transpackage {
    @Id
    private String id;
    private Integer creater;
    @Column(name = "create_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp createTime;
    private Integer packer;
    @Column(name = "pack_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp packTime;
    private Integer unpacker;
    @Column(name = "unpack_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp unpackTime;
    private Integer status;
    private Integer transporter;
    @Column(name = "start_node")
    private String startNode;
    @Transient
    private String startNodeName;
    @Column(name = "start_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp startTime;

    @Column(name = "end_node")
    private String endNode;
    @Transient
    private String endNodeName;
    private Integer ender;
    @Column(name = "end_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp endTime;

    public String getStartNodeName() {
        return startNodeName;
    }

    public void setStartNodeName(String startNodeName) {
        this.startNodeName = startNodeName;
    }

    public String getEndNodeName() {
        return endNodeName;
    }

    public void setEndNodeName(String endNodeName) {
        this.endNodeName = endNodeName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getCreater() {
        return creater;
    }

    public void setCreater(Integer creater) {
        this.creater = creater;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Integer getPacker() {
        return packer;
    }

    public void setPacker(Integer packer) {
        this.packer = packer;
    }

    public Timestamp getPackTime() {
        return packTime;
    }

    public void setPackTime(Timestamp packTime) {
        this.packTime = packTime;
    }

    public Integer getUnpacker() {
        return unpacker;
    }

    public void setUnpacker(Integer unpacker) {
        this.unpacker = unpacker;
    }

    public Timestamp getUnpackTime() {
        return unpackTime;
    }

    public void setUnpackTime(Timestamp unpackTime) {
        this.unpackTime = unpackTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getTransporter() {
        return transporter;
    }

    public void setTransporter(Integer transporter) {
        this.transporter = transporter;
    }

    public String getStartNode() {
        return startNode;
    }

    public void setStartNode(String startNode) {
        this.startNode = startNode;
    }

    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    public String getEndNode() {
        return endNode;
    }

    public void setEndNode(String endNode) {
        this.endNode = endNode;
    }

    public Integer getEnder() {
        return ender;
    }

    public void setEnder(Integer ender) {
        this.ender = ender;
    }

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "Transpackage{" +
                "id='" + id + '\'' +
                ", creater=" + creater +
                ", createTime=" + createTime +
                ", packer=" + packer +
                ", packTime=" + packTime +
                ", unpacker=" + unpacker +
                ", unpackTime=" + unpackTime +
                ", status=" + status +
                ", transporter=" + transporter +
                ", startNode='" + startNode + '\'' +
                ", startNodeName='" + startNodeName + '\'' +
                ", startTime=" + startTime +
                ", endNode='" + endNode + '\'' +
                ", endNodeName='" + endNodeName + '\'' +
                ", ender=" + ender +
                ", endTime=" + endTime +
                '}';
    }

    public static final class STATUS{
        public static final int STATUS_CREATED = 0;  // 包裹已创建
        public static final int STATUS_PACKED = 1;  // 包裹已打包
        public static final int STATUS_TRANSPORTING = 2;  // 包裹运输中
        public static final int STATUS_ARRIVED = 3;  // 包裹已到达
        public static final int STATUS_UNPACKED = 4;  // 包裹已拆包
    }
}
