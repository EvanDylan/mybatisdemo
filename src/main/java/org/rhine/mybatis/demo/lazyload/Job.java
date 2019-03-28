package org.rhine.mybatis.demo.lazyload;

import org.rhine.mybatis.demo.User;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

/**
 * @author qs.zhou
 * @date 2019/03/28
 */
public class Job implements Serializable {

    private static final long serialVersionUID = 2995475587390398675L;

    private long id;

    private String keyword;

    private BigDecimal floorPrice;

    private BigDecimal ceilingPrice;

    private int status;

    private long userId;

    private User user;

    private Timestamp createTime;

    private List<JobData> jobDataList;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public BigDecimal getFloorPrice() {
        return floorPrice;
    }

    public void setFloorPrice(BigDecimal floorPrice) {
        this.floorPrice = floorPrice;
    }

    public BigDecimal getCeilingPrice() {
        return ceilingPrice;
    }

    public void setCeilingPrice(BigDecimal ceilingPrice) {
        this.ceilingPrice = ceilingPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public List<JobData> getJobDataList() {
        return jobDataList;
    }

    public void setJobDataList(List<JobData> jobDataList) {
        this.jobDataList = jobDataList;
    }

    @Override
    public String toString() {
        return "Job{" +
                "id=" + id +
                ", keyword='" + keyword + '\'' +
                ", floorPrice=" + floorPrice +
                ", ceilingPrice=" + ceilingPrice +
                ", status=" + status +
                ", userId=" + userId +
                ", user=" + user +
                ", createTime=" + createTime +
                ", jobDataList=" + jobDataList +
                '}';
    }
}
