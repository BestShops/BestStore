package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BlogExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public BlogExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
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
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
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

        public Criteria andBidIsNull() {
            addCriterion("BID is null");
            return (Criteria) this;
        }

        public Criteria andBidIsNotNull() {
            addCriterion("BID is not null");
            return (Criteria) this;
        }

        public Criteria andBidEqualTo(Integer value) {
            addCriterion("BID =", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotEqualTo(Integer value) {
            addCriterion("BID <>", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThan(Integer value) {
            addCriterion("BID >", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThanOrEqualTo(Integer value) {
            addCriterion("BID >=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThan(Integer value) {
            addCriterion("BID <", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThanOrEqualTo(Integer value) {
            addCriterion("BID <=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidIn(List<Integer> values) {
            addCriterion("BID in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotIn(List<Integer> values) {
            addCriterion("BID not in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidBetween(Integer value1, Integer value2) {
            addCriterion("BID between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotBetween(Integer value1, Integer value2) {
            addCriterion("BID not between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBtitleIsNull() {
            addCriterion("BTITLE is null");
            return (Criteria) this;
        }

        public Criteria andBtitleIsNotNull() {
            addCriterion("BTITLE is not null");
            return (Criteria) this;
        }

        public Criteria andBtitleEqualTo(String value) {
            addCriterion("BTITLE =", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleNotEqualTo(String value) {
            addCriterion("BTITLE <>", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleGreaterThan(String value) {
            addCriterion("BTITLE >", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleGreaterThanOrEqualTo(String value) {
            addCriterion("BTITLE >=", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleLessThan(String value) {
            addCriterion("BTITLE <", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleLessThanOrEqualTo(String value) {
            addCriterion("BTITLE <=", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleLike(String value) {
            addCriterion("BTITLE like", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleNotLike(String value) {
            addCriterion("BTITLE not like", value, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleIn(List<String> values) {
            addCriterion("BTITLE in", values, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleNotIn(List<String> values) {
            addCriterion("BTITLE not in", values, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleBetween(String value1, String value2) {
            addCriterion("BTITLE between", value1, value2, "btitle");
            return (Criteria) this;
        }

        public Criteria andBtitleNotBetween(String value1, String value2) {
            addCriterion("BTITLE not between", value1, value2, "btitle");
            return (Criteria) this;
        }

        public Criteria andBdescIsNull() {
            addCriterion("BDESC is null");
            return (Criteria) this;
        }

        public Criteria andBdescIsNotNull() {
            addCriterion("BDESC is not null");
            return (Criteria) this;
        }

        public Criteria andBdescEqualTo(String value) {
            addCriterion("BDESC =", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescNotEqualTo(String value) {
            addCriterion("BDESC <>", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescGreaterThan(String value) {
            addCriterion("BDESC >", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescGreaterThanOrEqualTo(String value) {
            addCriterion("BDESC >=", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescLessThan(String value) {
            addCriterion("BDESC <", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescLessThanOrEqualTo(String value) {
            addCriterion("BDESC <=", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescLike(String value) {
            addCriterion("BDESC like", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescNotLike(String value) {
            addCriterion("BDESC not like", value, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescIn(List<String> values) {
            addCriterion("BDESC in", values, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescNotIn(List<String> values) {
            addCriterion("BDESC not in", values, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescBetween(String value1, String value2) {
            addCriterion("BDESC between", value1, value2, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBdescNotBetween(String value1, String value2) {
            addCriterion("BDESC not between", value1, value2, "bdesc");
            return (Criteria) this;
        }

        public Criteria andBphotoIsNull() {
            addCriterion("BPHOTO is null");
            return (Criteria) this;
        }

        public Criteria andBphotoIsNotNull() {
            addCriterion("BPHOTO is not null");
            return (Criteria) this;
        }

        public Criteria andBphotoEqualTo(String value) {
            addCriterion("BPHOTO =", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoNotEqualTo(String value) {
            addCriterion("BPHOTO <>", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoGreaterThan(String value) {
            addCriterion("BPHOTO >", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoGreaterThanOrEqualTo(String value) {
            addCriterion("BPHOTO >=", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoLessThan(String value) {
            addCriterion("BPHOTO <", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoLessThanOrEqualTo(String value) {
            addCriterion("BPHOTO <=", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoLike(String value) {
            addCriterion("BPHOTO like", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoNotLike(String value) {
            addCriterion("BPHOTO not like", value, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoIn(List<String> values) {
            addCriterion("BPHOTO in", values, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoNotIn(List<String> values) {
            addCriterion("BPHOTO not in", values, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoBetween(String value1, String value2) {
            addCriterion("BPHOTO between", value1, value2, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBphotoNotBetween(String value1, String value2) {
            addCriterion("BPHOTO not between", value1, value2, "bphoto");
            return (Criteria) this;
        }

        public Criteria andBtimeIsNull() {
            addCriterion("BTIME is null");
            return (Criteria) this;
        }

        public Criteria andBtimeIsNotNull() {
            addCriterion("BTIME is not null");
            return (Criteria) this;
        }

        public Criteria andBtimeEqualTo(Date value) {
            addCriterion("BTIME =", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeNotEqualTo(Date value) {
            addCriterion("BTIME <>", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeGreaterThan(Date value) {
            addCriterion("BTIME >", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("BTIME >=", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeLessThan(Date value) {
            addCriterion("BTIME <", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeLessThanOrEqualTo(Date value) {
            addCriterion("BTIME <=", value, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeIn(List<Date> values) {
            addCriterion("BTIME in", values, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeNotIn(List<Date> values) {
            addCriterion("BTIME not in", values, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeBetween(Date value1, Date value2) {
            addCriterion("BTIME between", value1, value2, "btime");
            return (Criteria) this;
        }

        public Criteria andBtimeNotBetween(Date value1, Date value2) {
            addCriterion("BTIME not between", value1, value2, "btime");
            return (Criteria) this;
        }

        public Criteria andBstatusIsNull() {
            addCriterion("BSTATUS is null");
            return (Criteria) this;
        }

        public Criteria andBstatusIsNotNull() {
            addCriterion("BSTATUS is not null");
            return (Criteria) this;
        }

        public Criteria andBstatusEqualTo(Integer value) {
            addCriterion("BSTATUS =", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusNotEqualTo(Integer value) {
            addCriterion("BSTATUS <>", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusGreaterThan(Integer value) {
            addCriterion("BSTATUS >", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("BSTATUS >=", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusLessThan(Integer value) {
            addCriterion("BSTATUS <", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusLessThanOrEqualTo(Integer value) {
            addCriterion("BSTATUS <=", value, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusIn(List<Integer> values) {
            addCriterion("BSTATUS in", values, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusNotIn(List<Integer> values) {
            addCriterion("BSTATUS not in", values, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusBetween(Integer value1, Integer value2) {
            addCriterion("BSTATUS between", value1, value2, "bstatus");
            return (Criteria) this;
        }

        public Criteria andBstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("BSTATUS not between", value1, value2, "bstatus");
            return (Criteria) this;
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
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table blog
     *
     * @mbg.generated do_not_delete_during_merge Fri Aug 24 11:17:55 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table blog
     *
     * @mbg.generated Fri Aug 24 11:17:55 CST 2018
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