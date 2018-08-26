package com.bs.beststore.vo;

import java.util.Date;

public class Store {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private Integer sid;

    @Override
	public String toString() {
		return "Store [sid=" + sid + ", sname=" + sname + ", sdesc=" + sdesc + ", sgrade=" + sgrade + ", sstatus="
				+ sstatus + ", sale=" + sale + ", stime=" + stime + ", hid=" + hid + "]";
	}

	/**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SNAME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private String sname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SDESC
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private String sdesc;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SGRADE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private Double sgrade;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SSTATUS
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private Integer sstatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.SALE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private String sale;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.STIME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private Date stime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column store.HID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    private Integer hid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SID
     *
     * @return the value of store.SID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Integer getSid() {
        return sid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SID
     *
     * @param sid the value for store.SID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSid(Integer sid) {
        this.sid = sid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SNAME
     *
     * @return the value of store.SNAME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public String getSname() {
        return sname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SNAME
     *
     * @param sname the value for store.SNAME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSname(String sname) {
        this.sname = sname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SDESC
     *
     * @return the value of store.SDESC
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public String getSdesc() {
        return sdesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SDESC
     *
     * @param sdesc the value for store.SDESC
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSdesc(String sdesc) {
        this.sdesc = sdesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SGRADE
     *
     * @return the value of store.SGRADE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Double getSgrade() {
        return sgrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SGRADE
     *
     * @param sgrade the value for store.SGRADE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSgrade(Double sgrade) {
        this.sgrade = sgrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SSTATUS
     *
     * @return the value of store.SSTATUS
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Integer getSstatus() {
        return sstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SSTATUS
     *
     * @param sstatus the value for store.SSTATUS
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSstatus(Integer sstatus) {
        this.sstatus = sstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.SALE
     *
     * @return the value of store.SALE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public String getSale() {
        return sale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.SALE
     *
     * @param sale the value for store.SALE
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setSale(String sale) {
        this.sale = sale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.STIME
     *
     * @return the value of store.STIME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Date getStime() {
        return stime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.STIME
     *
     * @param stime the value for store.STIME
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setStime(Date stime) {
        this.stime = stime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column store.HID
     *
     * @return the value of store.HID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Integer getHid() {
        return hid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column store.HID
     *
     * @param hid the value for store.HID
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setHid(Integer hid) {
        this.hid = hid;
    }
}