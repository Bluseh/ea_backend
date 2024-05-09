package com.extrace.server.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;

import java.sql.Timestamp;

@Entity
@Table(name = "express")
public class Express {
    @Id
    private String id;
    private Integer type;
    private Float weight;
    private Float fee;
    private Integer status;
    private Integer sender;
    private Integer receiver;
    @Column(name = "create_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp createTime;
    private Integer picker;
    @Column(name = "pick_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp pickTime;
    private Integer deliver;
    @Column(name = "deliver_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp deliverTime;
    private Integer signer;
    @Column(name = "sign_time")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp signTime;
    @Transient
    private Customer rcv;
    @Transient
    private Customer snd;
    @Transient
    private User pic;
    @Transient
    private User dlv;
    @Transient
    private Customer sig;

    // 新添加的属性
    @Column(name="send_address")
    private String senderAddress;
    @Column(name = "send_region_code")
    private String senderRegionCode;
    @Column(name = "recv_address")
    private String receiverAddress;
    @Column(name = "recv_region_code")
    private String receiverRegionCode;

    // 新添加的方法

    public String getSenderAddress() {
        return senderAddress;
    }

    public void setSenderAddress(String senderAddress) {
        this.senderAddress = senderAddress;
    }

    public String getSenderRegionCode() {
        return senderRegionCode;
    }

    public void setSenderRegionCode(String senderRegionCode) {
        this.senderRegionCode = senderRegionCode;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverRegionCode() {
        return receiverRegionCode;
    }

    public void setReceiverRegionCode(String receiverRegionCode) {
        this.receiverRegionCode = receiverRegionCode;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public Float getFee() {
        return fee;
    }

    public void setFee(Float fee) {
        this.fee = fee;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSender() {
        return sender;
    }

    public void setSender(Integer sender) {
        this.sender = sender;
    }

    public Integer getReceiver() {
        return receiver;
    }

    public void setReceiver(Integer receiver) {
        this.receiver = receiver;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Integer getPicker() {
        return picker;
    }

    public void setPicker(Integer picker) {
        this.picker = picker;
    }

    public Timestamp getPickTime() {
        return pickTime;
    }

    public void setPickTime(Timestamp pickTime) {
        this.pickTime = pickTime;
    }

    public Integer getDeliver() {
        return deliver;
    }

    public void setDeliver(Integer deliver) {
        this.deliver = deliver;
    }

    public Timestamp getDeliverTime() {
        return deliverTime;
    }

    public void setDeliverTime(Timestamp deliverTime) {
        this.deliverTime = deliverTime;
    }

    public Integer getSigner() {
        return signer;
    }

    public void setSigner(Integer signer) {
        this.signer = signer;
    }

    public Timestamp getSignTime() {
        return signTime;
    }

    public void setSignTime(Timestamp signTime) {
        this.signTime = signTime;
    }

    public Customer getRcv() {
        return rcv;
    }

    public void setRcv(Customer rcv) {
        this.rcv = rcv;
    }

    public Customer getSnd() {
        return snd;
    }

    public void setSnd(Customer snd) {
        this.snd = snd;
    }

    public User getPic() {
        return pic;
    }

    public void setPic(User pic) {
        this.pic = pic;
    }

    public User getDlv() {
        return dlv;
    }

    public void setDlv(User dlv) {
        this.dlv = dlv;
    }

    public Customer getSig() {
        return sig;
    }

    public void setSig(Customer sig) {
        this.sig = sig;
    }

    @Override
    public String toString() {
        return "Express{" +
                "id='" + id + '\'' +
                ", type=" + type +
                ", weight=" + weight +
                ", fee=" + fee +
                ", status=" + status +
                ", sender=" + sender +
                ", receiver=" + receiver +
                ", createTime=" + createTime +
                ", picker=" + picker +
                ", pickTime=" + pickTime +
                ", deliver=" + deliver +
                ", deliverTime=" + deliverTime +
                ", signer=" + signer +
                ", signTime=" + signTime +
                ", rcv=" + rcv +
                ", snd=" + snd +
                ", pic=" + pic +
                ", dlv=" + dlv +
                ", sig=" + sig +
                '}';
    }

    public static final class STATUS{
        public static final int STATUS_CREATED = 0;  // 快件已创建
        public static final int STATUS_PICKED = 1;  // 快件已揽收
        public static final int STATUS_TRANSPORTING = 2;  // 快件运输中
        public static final int STATUS_DELIVERING = 3;  // 快件派送中
        public static final int STATUS_SIGNED = 4;  // 快件已签收
        public static final int STATUS_SORTED = 5;//快件已分拣
        public static final int STATUS_UNSORTED = 6;//快件未分拣
        public static final int STATUS_WAIT_DELIVER = 7; // 快件待派送
    }
}
