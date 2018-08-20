package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrdersExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public OrdersExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
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
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
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

        public Criteria andOidIsNull() {
            addCriterion("OID is null");
            return (Criteria) this;
        }

        public Criteria andOidIsNotNull() {
            addCriterion("OID is not null");
            return (Criteria) this;
        }

        public Criteria andOidEqualTo(Integer value) {
            addCriterion("OID =", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidNotEqualTo(Integer value) {
            addCriterion("OID <>", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidGreaterThan(Integer value) {
            addCriterion("OID >", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidGreaterThanOrEqualTo(Integer value) {
            addCriterion("OID >=", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidLessThan(Integer value) {
            addCriterion("OID <", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidLessThanOrEqualTo(Integer value) {
            addCriterion("OID <=", value, "oid");
            return (Criteria) this;
        }

        public Criteria andOidIn(List<Integer> values) {
            addCriterion("OID in", values, "oid");
            return (Criteria) this;
        }

        public Criteria andOidNotIn(List<Integer> values) {
            addCriterion("OID not in", values, "oid");
            return (Criteria) this;
        }

        public Criteria andOidBetween(Integer value1, Integer value2) {
            addCriterion("OID between", value1, value2, "oid");
            return (Criteria) this;
        }

        public Criteria andOidNotBetween(Integer value1, Integer value2) {
            addCriterion("OID not between", value1, value2, "oid");
            return (Criteria) this;
        }

        public Criteria andOtimeIsNull() {
            addCriterion("OTIME is null");
            return (Criteria) this;
        }

        public Criteria andOtimeIsNotNull() {
            addCriterion("OTIME is not null");
            return (Criteria) this;
        }

        public Criteria andOtimeEqualTo(Date value) {
            addCriterion("OTIME =", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeNotEqualTo(Date value) {
            addCriterion("OTIME <>", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeGreaterThan(Date value) {
            addCriterion("OTIME >", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("OTIME >=", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeLessThan(Date value) {
            addCriterion("OTIME <", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeLessThanOrEqualTo(Date value) {
            addCriterion("OTIME <=", value, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeIn(List<Date> values) {
            addCriterion("OTIME in", values, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeNotIn(List<Date> values) {
            addCriterion("OTIME not in", values, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeBetween(Date value1, Date value2) {
            addCriterion("OTIME between", value1, value2, "otime");
            return (Criteria) this;
        }

        public Criteria andOtimeNotBetween(Date value1, Date value2) {
            addCriterion("OTIME not between", value1, value2, "otime");
            return (Criteria) this;
        }

        public Criteria andOstatusIsNull() {
            addCriterion("OSTATUS is null");
            return (Criteria) this;
        }

        public Criteria andOstatusIsNotNull() {
            addCriterion("OSTATUS is not null");
            return (Criteria) this;
        }

        public Criteria andOstatusEqualTo(Integer value) {
            addCriterion("OSTATUS =", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotEqualTo(Integer value) {
            addCriterion("OSTATUS <>", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusGreaterThan(Integer value) {
            addCriterion("OSTATUS >", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("OSTATUS >=", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusLessThan(Integer value) {
            addCriterion("OSTATUS <", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusLessThanOrEqualTo(Integer value) {
            addCriterion("OSTATUS <=", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusIn(List<Integer> values) {
            addCriterion("OSTATUS in", values, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotIn(List<Integer> values) {
            addCriterion("OSTATUS not in", values, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusBetween(Integer value1, Integer value2) {
            addCriterion("OSTATUS between", value1, value2, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("OSTATUS not between", value1, value2, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstateIsNull() {
            addCriterion("OSTATE is null");
            return (Criteria) this;
        }

        public Criteria andOstateIsNotNull() {
            addCriterion("OSTATE is not null");
            return (Criteria) this;
        }

        public Criteria andOstateEqualTo(Integer value) {
            addCriterion("OSTATE =", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateNotEqualTo(Integer value) {
            addCriterion("OSTATE <>", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateGreaterThan(Integer value) {
            addCriterion("OSTATE >", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateGreaterThanOrEqualTo(Integer value) {
            addCriterion("OSTATE >=", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateLessThan(Integer value) {
            addCriterion("OSTATE <", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateLessThanOrEqualTo(Integer value) {
            addCriterion("OSTATE <=", value, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateIn(List<Integer> values) {
            addCriterion("OSTATE in", values, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateNotIn(List<Integer> values) {
            addCriterion("OSTATE not in", values, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateBetween(Integer value1, Integer value2) {
            addCriterion("OSTATE between", value1, value2, "ostate");
            return (Criteria) this;
        }

        public Criteria andOstateNotBetween(Integer value1, Integer value2) {
            addCriterion("OSTATE not between", value1, value2, "ostate");
            return (Criteria) this;
        }

        public Criteria andAidIsNull() {
            addCriterion("AID is null");
            return (Criteria) this;
        }

        public Criteria andAidIsNotNull() {
            addCriterion("AID is not null");
            return (Criteria) this;
        }

        public Criteria andAidEqualTo(Integer value) {
            addCriterion("AID =", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotEqualTo(Integer value) {
            addCriterion("AID <>", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidGreaterThan(Integer value) {
            addCriterion("AID >", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidGreaterThanOrEqualTo(Integer value) {
            addCriterion("AID >=", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidLessThan(Integer value) {
            addCriterion("AID <", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidLessThanOrEqualTo(Integer value) {
            addCriterion("AID <=", value, "aid");
            return (Criteria) this;
        }

        public Criteria andAidIn(List<Integer> values) {
            addCriterion("AID in", values, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotIn(List<Integer> values) {
            addCriterion("AID not in", values, "aid");
            return (Criteria) this;
        }

        public Criteria andAidBetween(Integer value1, Integer value2) {
            addCriterion("AID between", value1, value2, "aid");
            return (Criteria) this;
        }

        public Criteria andAidNotBetween(Integer value1, Integer value2) {
            addCriterion("AID not between", value1, value2, "aid");
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

        public Criteria andOlastpriceIsNull() {
            addCriterion("OLASTPRICE is null");
            return (Criteria) this;
        }

        public Criteria andOlastpriceIsNotNull() {
            addCriterion("OLASTPRICE is not null");
            return (Criteria) this;
        }

        public Criteria andOlastpriceEqualTo(Double value) {
            addCriterion("OLASTPRICE =", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceNotEqualTo(Double value) {
            addCriterion("OLASTPRICE <>", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceGreaterThan(Double value) {
            addCriterion("OLASTPRICE >", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("OLASTPRICE >=", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceLessThan(Double value) {
            addCriterion("OLASTPRICE <", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceLessThanOrEqualTo(Double value) {
            addCriterion("OLASTPRICE <=", value, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceIn(List<Double> values) {
            addCriterion("OLASTPRICE in", values, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceNotIn(List<Double> values) {
            addCriterion("OLASTPRICE not in", values, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceBetween(Double value1, Double value2) {
            addCriterion("OLASTPRICE between", value1, value2, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOlastpriceNotBetween(Double value1, Double value2) {
            addCriterion("OLASTPRICE not between", value1, value2, "olastprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceIsNull() {
            addCriterion("ONOWPRICE is null");
            return (Criteria) this;
        }

        public Criteria andOnowpriceIsNotNull() {
            addCriterion("ONOWPRICE is not null");
            return (Criteria) this;
        }

        public Criteria andOnowpriceEqualTo(Double value) {
            addCriterion("ONOWPRICE =", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceNotEqualTo(Double value) {
            addCriterion("ONOWPRICE <>", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceGreaterThan(Double value) {
            addCriterion("ONOWPRICE >", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("ONOWPRICE >=", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceLessThan(Double value) {
            addCriterion("ONOWPRICE <", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceLessThanOrEqualTo(Double value) {
            addCriterion("ONOWPRICE <=", value, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceIn(List<Double> values) {
            addCriterion("ONOWPRICE in", values, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceNotIn(List<Double> values) {
            addCriterion("ONOWPRICE not in", values, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceBetween(Double value1, Double value2) {
            addCriterion("ONOWPRICE between", value1, value2, "onowprice");
            return (Criteria) this;
        }

        public Criteria andOnowpriceNotBetween(Double value1, Double value2) {
            addCriterion("ONOWPRICE not between", value1, value2, "onowprice");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table orders
     *
     * @mbg.generated do_not_delete_during_merge Mon Aug 20 09:28:45 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
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