package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.List;

public class DiscussExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public DiscussExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
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
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
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

        public Criteria andDidIsNull() {
            addCriterion("DID is null");
            return (Criteria) this;
        }

        public Criteria andDidIsNotNull() {
            addCriterion("DID is not null");
            return (Criteria) this;
        }

        public Criteria andDidEqualTo(Integer value) {
            addCriterion("DID =", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotEqualTo(Integer value) {
            addCriterion("DID <>", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidGreaterThan(Integer value) {
            addCriterion("DID >", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidGreaterThanOrEqualTo(Integer value) {
            addCriterion("DID >=", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidLessThan(Integer value) {
            addCriterion("DID <", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidLessThanOrEqualTo(Integer value) {
            addCriterion("DID <=", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidIn(List<Integer> values) {
            addCriterion("DID in", values, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotIn(List<Integer> values) {
            addCriterion("DID not in", values, "did");
            return (Criteria) this;
        }

        public Criteria andDidBetween(Integer value1, Integer value2) {
            addCriterion("DID between", value1, value2, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotBetween(Integer value1, Integer value2) {
            addCriterion("DID not between", value1, value2, "did");
            return (Criteria) this;
        }

        public Criteria andDepictIsNull() {
            addCriterion("DEPICT is null");
            return (Criteria) this;
        }

        public Criteria andDepictIsNotNull() {
            addCriterion("DEPICT is not null");
            return (Criteria) this;
        }

        public Criteria andDepictEqualTo(String value) {
            addCriterion("DEPICT =", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictNotEqualTo(String value) {
            addCriterion("DEPICT <>", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictGreaterThan(String value) {
            addCriterion("DEPICT >", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictGreaterThanOrEqualTo(String value) {
            addCriterion("DEPICT >=", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictLessThan(String value) {
            addCriterion("DEPICT <", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictLessThanOrEqualTo(String value) {
            addCriterion("DEPICT <=", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictLike(String value) {
            addCriterion("DEPICT like", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictNotLike(String value) {
            addCriterion("DEPICT not like", value, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictIn(List<String> values) {
            addCriterion("DEPICT in", values, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictNotIn(List<String> values) {
            addCriterion("DEPICT not in", values, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictBetween(String value1, String value2) {
            addCriterion("DEPICT between", value1, value2, "depict");
            return (Criteria) this;
        }

        public Criteria andDepictNotBetween(String value1, String value2) {
            addCriterion("DEPICT not between", value1, value2, "depict");
            return (Criteria) this;
        }

        public Criteria andDrankIsNull() {
            addCriterion("DRANK is null");
            return (Criteria) this;
        }

        public Criteria andDrankIsNotNull() {
            addCriterion("DRANK is not null");
            return (Criteria) this;
        }

        public Criteria andDrankEqualTo(Integer value) {
            addCriterion("DRANK =", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankNotEqualTo(Integer value) {
            addCriterion("DRANK <>", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankGreaterThan(Integer value) {
            addCriterion("DRANK >", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankGreaterThanOrEqualTo(Integer value) {
            addCriterion("DRANK >=", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankLessThan(Integer value) {
            addCriterion("DRANK <", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankLessThanOrEqualTo(Integer value) {
            addCriterion("DRANK <=", value, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankIn(List<Integer> values) {
            addCriterion("DRANK in", values, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankNotIn(List<Integer> values) {
            addCriterion("DRANK not in", values, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankBetween(Integer value1, Integer value2) {
            addCriterion("DRANK between", value1, value2, "drank");
            return (Criteria) this;
        }

        public Criteria andDrankNotBetween(Integer value1, Integer value2) {
            addCriterion("DRANK not between", value1, value2, "drank");
            return (Criteria) this;
        }

        public Criteria andDphotoIsNull() {
            addCriterion("DPHOTO is null");
            return (Criteria) this;
        }

        public Criteria andDphotoIsNotNull() {
            addCriterion("DPHOTO is not null");
            return (Criteria) this;
        }

        public Criteria andDphotoEqualTo(String value) {
            addCriterion("DPHOTO =", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoNotEqualTo(String value) {
            addCriterion("DPHOTO <>", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoGreaterThan(String value) {
            addCriterion("DPHOTO >", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoGreaterThanOrEqualTo(String value) {
            addCriterion("DPHOTO >=", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoLessThan(String value) {
            addCriterion("DPHOTO <", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoLessThanOrEqualTo(String value) {
            addCriterion("DPHOTO <=", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoLike(String value) {
            addCriterion("DPHOTO like", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoNotLike(String value) {
            addCriterion("DPHOTO not like", value, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoIn(List<String> values) {
            addCriterion("DPHOTO in", values, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoNotIn(List<String> values) {
            addCriterion("DPHOTO not in", values, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoBetween(String value1, String value2) {
            addCriterion("DPHOTO between", value1, value2, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDphotoNotBetween(String value1, String value2) {
            addCriterion("DPHOTO not between", value1, value2, "dphoto");
            return (Criteria) this;
        }

        public Criteria andDstatusIsNull() {
            addCriterion("DSTATUS is null");
            return (Criteria) this;
        }

        public Criteria andDstatusIsNotNull() {
            addCriterion("DSTATUS is not null");
            return (Criteria) this;
        }

        public Criteria andDstatusEqualTo(Integer value) {
            addCriterion("DSTATUS =", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotEqualTo(Integer value) {
            addCriterion("DSTATUS <>", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusGreaterThan(Integer value) {
            addCriterion("DSTATUS >", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("DSTATUS >=", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusLessThan(Integer value) {
            addCriterion("DSTATUS <", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusLessThanOrEqualTo(Integer value) {
            addCriterion("DSTATUS <=", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusIn(List<Integer> values) {
            addCriterion("DSTATUS in", values, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotIn(List<Integer> values) {
            addCriterion("DSTATUS not in", values, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusBetween(Integer value1, Integer value2) {
            addCriterion("DSTATUS between", value1, value2, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("DSTATUS not between", value1, value2, "dstatus");
            return (Criteria) this;
        }

        public Criteria andGidIsNull() {
            addCriterion("GID is null");
            return (Criteria) this;
        }

        public Criteria andGidIsNotNull() {
            addCriterion("GID is not null");
            return (Criteria) this;
        }

        public Criteria andGidEqualTo(Integer value) {
            addCriterion("GID =", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotEqualTo(Integer value) {
            addCriterion("GID <>", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThan(Integer value) {
            addCriterion("GID >", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidGreaterThanOrEqualTo(Integer value) {
            addCriterion("GID >=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThan(Integer value) {
            addCriterion("GID <", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidLessThanOrEqualTo(Integer value) {
            addCriterion("GID <=", value, "gid");
            return (Criteria) this;
        }

        public Criteria andGidIn(List<Integer> values) {
            addCriterion("GID in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotIn(List<Integer> values) {
            addCriterion("GID not in", values, "gid");
            return (Criteria) this;
        }

        public Criteria andGidBetween(Integer value1, Integer value2) {
            addCriterion("GID between", value1, value2, "gid");
            return (Criteria) this;
        }

        public Criteria andGidNotBetween(Integer value1, Integer value2) {
            addCriterion("GID not between", value1, value2, "gid");
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
     * This class corresponds to the database table discuss
     *
     * @mbg.generated do_not_delete_during_merge Wed Aug 29 09:57:28 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
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