package com.bs.beststore.vo;

import java.util.Date;

/**
 * 商品信息表
 *gid：商品id	、gname：商品名、glastprice：原价、gnowprice：现价、gdesc：商品描述
 *grade：商品评分、gpublish：上架时间、tid：类别id、sid：店铺id、gstatus：商品状态，0审核中，1上架中，2审核未通过，3商家下架
 */
public class Goods {
    private Integer gid;

    private String gname;

    private Double glastprice;

    private Double gnowprice;

    private String gdesc;

    private Double grade;

    private Date gpublish;

    private Integer tid;

    private Integer sid;

    private Integer gstatus;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GID
     *
     * @return the value of goods.GID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Integer getGid() {
        return gid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GID
     *
     * @param gid the value for goods.GID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGid(Integer gid) {
        this.gid = gid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GNAME
     *
     * @return the value of goods.GNAME
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public String getGname() {
        return gname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GNAME
     *
     * @param gname the value for goods.GNAME
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGname(String gname) {
        this.gname = gname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GLASTPRICE
     *
     * @return the value of goods.GLASTPRICE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Double getGlastprice() {
        return glastprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GLASTPRICE
     *
     * @param glastprice the value for goods.GLASTPRICE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGlastprice(Double glastprice) {
        this.glastprice = glastprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GNOWPRICE
     *
     * @return the value of goods.GNOWPRICE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Double getGnowprice() {
        return gnowprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GNOWPRICE
     *
     * @param gnowprice the value for goods.GNOWPRICE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGnowprice(Double gnowprice) {
        this.gnowprice = gnowprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GDESC
     *
     * @return the value of goods.GDESC
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public String getGdesc() {
        return gdesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GDESC
     *
     * @param gdesc the value for goods.GDESC
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGdesc(String gdesc) {
        this.gdesc = gdesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GRADE
     *
     * @return the value of goods.GRADE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Double getGrade() {
        return grade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GRADE
     *
     * @param grade the value for goods.GRADE
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGrade(Double grade) {
        this.grade = grade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GPUBLISH
     *
     * @return the value of goods.GPUBLISH
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Date getGpublish() {
        return gpublish;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GPUBLISH
     *
     * @param gpublish the value for goods.GPUBLISH
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGpublish(Date gpublish) {
        this.gpublish = gpublish;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.TID
     *
     * @return the value of goods.TID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Integer getTid() {
        return tid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.TID
     *
     * @param tid the value for goods.TID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setTid(Integer tid) {
        this.tid = tid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.SID
     *
     * @return the value of goods.SID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Integer getSid() {
        return sid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.SID
     *
     * @param sid the value for goods.SID
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setSid(Integer sid) {
        this.sid = sid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.GSTATUS
     *
     * @return the value of goods.GSTATUS
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public Integer getGstatus() {
        return gstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.GSTATUS
     *
     * @param gstatus the value for goods.GSTATUS
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    public void setGstatus(Integer gstatus) {
        this.gstatus = gstatus;
    }
}