package cn.domain;

import java.math.BigDecimal;
import java.util.Date;

public class TbProduct {
    private Integer id;

    private Integer categoryMainId;

    private Integer categoryBranchId;

    private String name;

    private String producingArea;

    private Date createTime;

    private BigDecimal marketPrice;

    private BigDecimal sellPrice;

    private Integer salesVolume;

    private String picture;

    private Boolean discount;

    private Integer stock;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryMainId() {
        return categoryMainId;
    }

    public void setCategoryMainId(Integer categoryMainId) {
        this.categoryMainId = categoryMainId;
    }

    public Integer getCategoryBranchId() {
        return categoryBranchId;
    }

    public void setCategoryBranchId(Integer categoryBranchId) {
        this.categoryBranchId = categoryBranchId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getProducingArea() {
        return producingArea;
    }

    public void setProducingArea(String producingArea) {
        this.producingArea = producingArea == null ? null : producingArea.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public BigDecimal getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(BigDecimal marketPrice) {
        this.marketPrice = marketPrice;
    }

    public BigDecimal getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(BigDecimal sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Integer getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Integer salesVolume) {
        this.salesVolume = salesVolume;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public Boolean getDiscount() {
        return discount;
    }

    public void setDiscount(Boolean discount) {
        this.discount = discount;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}