package cn.domain;

import java.math.BigDecimal;
import java.util.Date;

public class TbBill {
    private String id;

    private Integer billUserId;

    private BigDecimal totalPrice;//total_price

    private String deliveryMethod;

    private String memo;

    private Boolean deliverySign;

    private Date createTime;

    private Integer paymentId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getBillUserId() {
        return billUserId;
    }

    public void setBillUserId(Integer billUserId) {
        this.billUserId = billUserId;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getDeliveryMethod() {
        return deliveryMethod;
    }

    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod == null ? null : deliveryMethod.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    public Boolean getDeliverySign() {
        return deliverySign;
    }

    public void setDeliverySign(Boolean deliverySign) {
        this.deliverySign = deliverySign;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Integer paymentId) {
        this.paymentId = paymentId;
    }
}