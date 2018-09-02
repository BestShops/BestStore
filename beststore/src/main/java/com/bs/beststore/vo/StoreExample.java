package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StoreExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public StoreExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSidIsNull() {
            addCriterion("SID is null");
            return (Criteria) this;
        }

        public Criteria andSidIsNotNull() {
            addCriterion("SID is not null");
            return (Criteria) this;
        }

        public Criteria andSidEqualTo(Integer value) {
            addCriterion("SID =", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotEqualTo(Integer value) {
            addCriterion("SID <>", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThan(Integer value) {
            addCriterion("SID >", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThanOrEqualTo(Integer value) {
            addCriterion("SID >=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThan(Integer value) {
            addCriterion("SID <", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThanOrEqualTo(Integer value) {
            addCriterion("SID <=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidIn(List<Integer> values) {
            addCriterion("SID in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotIn(List<Integer> values) {
            addCriterion("SID not in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidBetween(Integer value1, Integer value2) {
            addCriterion("SID between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotBetween(Integer value1, Integer value2) {
            addCriterion("SID not between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andSnameIsNull() {
            addCriterion("SNAME is null");
            return (Criteria) this;
        }

        public Criteria andSnameIsNotNull() {
            addCriterion("SNAME is not null");
            return (Criteria) this;
        }

        public Criteria andSnameEqualTo(String value) {
            addCriterion("SNAME =", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotEqualTo(String value) {
            addCriterion("SNAME <>", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameGreaterThan(String value) {
            addCriterion("SNAME >", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameGreaterThanOrEqualTo(String value) {
            addCriterion("SNAME >=", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLessThan(String value) {
            addCriterion("SNAME <", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLessThanOrEqualTo(String value) {
            addCriterion("SNAME <=", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLike(String value) {
            addCriterion("SNAME like", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotLike(String value) {
            addCriterion("SNAME not like", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameIn(List<String> values) {
            addCriterion("SNAME in", values, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotIn(List<String> values) {
            addCriterion("SNAME not in", values, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameBetween(String value1, String value2) {
            addCriterion("SNAME between", value1, value2, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotBetween(String value1, String value2) {
            addCriterion("SNAME not between", value1, value2, "sname");
            return (Criteria) this;
        }

        public Criteria andSdescIsNull() {
            addCriterion("SDESC is null");
            return (Criteria) this;
        }

        public Criteria andSdescIsNotNull() {
            addCriterion("SDESC is not null");
            return (Criteria) this;
        }

        public Criteria andSdescEqualTo(String value) {
            addCriterion("SDESC =", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescNotEqualTo(String value) {
            addCriterion("SDESC <>", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescGreaterThan(String value) {
            addCriterion("SDESC >", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescGreaterThanOrEqualTo(String value) {
            addCriterion("SDESC >=", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescLessThan(String value) {
            addCriterion("SDESC <", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescLessThanOrEqualTo(String value) {
            addCriterion("SDESC <=", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescLike(String value) {
            addCriterion("SDESC like", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescNotLike(String value) {
            addCriterion("SDESC not like", value, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescIn(List<String> values) {
            addCriterion("SDESC in", values, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescNotIn(List<String> values) {
            addCriterion("SDESC not in", values, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescBetween(String value1, String value2) {
            addCriterion("SDESC between", value1, value2, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSdescNotBetween(String value1, String value2) {
            addCriterion("SDESC not between", value1, value2, "sdesc");
            return (Criteria) this;
        }

        public Criteria andSgradeIsNull() {
            addCriterion("SGRADE is null");
            return (Criteria) this;
        }

        public Criteria andSgradeIsNotNull() {
            addCriterion("SGRADE is not null");
            return (Criteria) this;
        }

        public Criteria andSgradeEqualTo(Double value) {
            addCriterion("SGRADE =", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeNotEqualTo(Double value) {
            addCriterion("SGRADE <>", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeGreaterThan(Double value) {
            addCriterion("SGRADE >", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeGreaterThanOrEqualTo(Double value) {
            addCriterion("SGRADE >=", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeLessThan(Double value) {
            addCriterion("SGRADE <", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeLessThanOrEqualTo(Double value) {
            addCriterion("SGRADE <=", value, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeIn(List<Double> values) {
            addCriterion("SGRADE in", values, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeNotIn(List<Double> values) {
            addCriterion("SGRADE not in", values, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeBetween(Double value1, Double value2) {
            addCriterion("SGRADE between", value1, value2, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSgradeNotBetween(Double value1, Double value2) {
            addCriterion("SGRADE not between", value1, value2, "sgrade");
            return (Criteria) this;
        }

        public Criteria andSstatusIsNull() {
            addCriterion("SSTATUS is null");
            return (Criteria) this;
        }

        public Criteria andSstatusIsNotNull() {
            addCriterion("SSTATUS is not null");
            return (Criteria) this;
        }

        public Criteria andSstatusEqualTo(Integer value) {
            addCriterion("SSTATUS =", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusNotEqualTo(Integer value) {
            addCriterion("SSTATUS <>", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusGreaterThan(Integer value) {
            addCriterion("SSTATUS >", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("SSTATUS >=", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusLessThan(Integer value) {
            addCriterion("SSTATUS <", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusLessThanOrEqualTo(Integer value) {
            addCriterion("SSTATUS <=", value, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusIn(List<Integer> values) {
            addCriterion("SSTATUS in", values, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusNotIn(List<Integer> values) {
            addCriterion("SSTATUS not in", values, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusBetween(Integer value1, Integer value2) {
            addCriterion("SSTATUS between", value1, value2, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("SSTATUS not between", value1, value2, "sstatus");
            return (Criteria) this;
        }

        public Criteria andSaleIsNull() {
            addCriterion("SALE is null");
            return (Criteria) this;
        }

        public Criteria andSaleIsNotNull() {
            addCriterion("SALE is not null");
            return (Criteria) this;
        }

        public Criteria andSaleEqualTo(String value) {
            addCriterion("SALE =", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleNotEqualTo(String value) {
            addCriterion("SALE <>", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleGreaterThan(String value) {
            addCriterion("SALE >", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleGreaterThanOrEqualTo(String value) {
            addCriterion("SALE >=", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleLessThan(String value) {
            addCriterion("SALE <", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleLessThanOrEqualTo(String value) {
            addCriterion("SALE <=", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleLike(String value) {
            addCriterion("SALE like", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleNotLike(String value) {
            addCriterion("SALE not like", value, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleIn(List<String> values) {
            addCriterion("SALE in", values, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleNotIn(List<String> values) {
            addCriterion("SALE not in", values, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleBetween(String value1, String value2) {
            addCriterion("SALE between", value1, value2, "sale");
            return (Criteria) this;
        }

        public Criteria andSaleNotBetween(String value1, String value2) {
            addCriterion("SALE not between", value1, value2, "sale");
            return (Criteria) this;
        }

        public Criteria andStimeIsNull() {
            addCriterion("STIME is null");
            return (Criteria) this;
        }

        public Criteria andStimeIsNotNull() {
            addCriterion("STIME is not null");
            return (Criteria) this;
        }

        public Criteria andStimeEqualTo(Date value) {
            addCriterion("STIME =", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeNotEqualTo(Date value) {
            addCriterion("STIME <>", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeGreaterThan(Date value) {
            addCriterion("STIME >", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeGreaterThanOrEqualTo(Date value) {
            addCriterion("STIME >=", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeLessThan(Date value) {
            addCriterion("STIME <", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeLessThanOrEqualTo(Date value) {
            addCriterion("STIME <=", value, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeIn(List<Date> values) {
            addCriterion("STIME in", values, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeNotIn(List<Date> values) {
            addCriterion("STIME not in", values, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeBetween(Date value1, Date value2) {
            addCriterion("STIME between", value1, value2, "stime");
            return (Criteria) this;
        }

        public Criteria andStimeNotBetween(Date value1, Date value2) {
            addCriterion("STIME not between", value1, value2, "stime");
            return (Criteria) this;
        }

        public Criteria andHidIsNull() {
            addCriterion("HID is null");
            return (Criteria) this;
        }

        public Criteria andHidIsNotNull() {
            addCriterion("HID is not null");
            return (Criteria) this;
        }

        public Criteria andHidEqualTo(Integer value) {
            addCriterion("HID =", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidNotEqualTo(Integer value) {
            addCriterion("HID <>", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidGreaterThan(Integer value) {
            addCriterion("HID >", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidGreaterThanOrEqualTo(Integer value) {
            addCriterion("HID >=", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidLessThan(Integer value) {
            addCriterion("HID <", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidLessThanOrEqualTo(Integer value) {
            addCriterion("HID <=", value, "hid");
            return (Criteria) this;
        }

        public Criteria andHidIn(List<Integer> values) {
            addCriterion("HID in", values, "hid");
            return (Criteria) this;
        }

        public Criteria andHidNotIn(List<Integer> values) {
            addCriterion("HID not in", values, "hid");
            return (Criteria) this;
        }

        public Criteria andHidBetween(Integer value1, Integer value2) {
            addCriterion("HID between", value1, value2, "hid");
            return (Criteria) this;
        }

        public Criteria andHidNotBetween(Integer value1, Integer value2) {
            addCriterion("HID not between", value1, value2, "hid");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table store
     *
     * @mbg.generated do_not_delete_during_merge Sun Sep 02 14:34:44 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table store
     *
     * @mbg.generated Sun Sep 02 14:34:44 CST 2018
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}