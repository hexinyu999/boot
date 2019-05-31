package cn.domain;

import java.util.Date;

public class TbCategoryBranch {
    private Integer id;

    private Integer categoryMainId;

    private String name;

    private Date createTime;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}