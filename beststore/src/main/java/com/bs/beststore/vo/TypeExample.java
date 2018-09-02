package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.List;

public class TypeExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public TypeExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
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
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
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

        public Criteria andTidIsNull() {
            addCriterion("TID is null");
            return (Criteria) this;
        }

        public Criteria andTidIsNotNull() {
            addCriterion("TID is not null");
            return (Criteria) this;
        }

        public Criteria andTidEqualTo(Integer value) {
            addCriterion("TID =", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotEqualTo(Integer value) {
            addCriterion("TID <>", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThan(Integer value) {
            addCriterion("TID >", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThanOrEqualTo(Integer value) {
            addCriterion("TID >=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThan(Integer value) {
            addCriterion("TID <", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThanOrEqualTo(Integer value) {
            addCriterion("TID <=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidIn(List<Integer> values) {
            addCriterion("TID in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotIn(List<Integer> values) {
            addCriterion("TID not in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidBetween(Integer value1, Integer value2) {
            addCriterion("TID between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotBetween(Integer value1, Integer value2) {
            addCriterion("TID not between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTprinameIsNull() {
            addCriterion("TPRINAME is null");
            return (Criteria) this;
        }

        public Criteria andTprinameIsNotNull() {
            addCriterion("TPRINAME is not null");
            return (Criteria) this;
        }

        public Criteria andTprinameEqualTo(String value) {
            addCriterion("TPRINAME =", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameNotEqualTo(String value) {
            addCriterion("TPRINAME <>", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameGreaterThan(String value) {
            addCriterion("TPRINAME >", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameGreaterThanOrEqualTo(String value) {
            addCriterion("TPRINAME >=", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameLessThan(String value) {
            addCriterion("TPRINAME <", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameLessThanOrEqualTo(String value) {
            addCriterion("TPRINAME <=", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameLike(String value) {
            addCriterion("TPRINAME like", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameNotLike(String value) {
            addCriterion("TPRINAME not like", value, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameIn(List<String> values) {
            addCriterion("TPRINAME in", values, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameNotIn(List<String> values) {
            addCriterion("TPRINAME not in", values, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameBetween(String value1, String value2) {
            addCriterion("TPRINAME between", value1, value2, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTprinameNotBetween(String value1, String value2) {
            addCriterion("TPRINAME not between", value1, value2, "tpriname");
            return (Criteria) this;
        }

        public Criteria andTparentidIsNull() {
            addCriterion("TPARENTID is null");
            return (Criteria) this;
        }

        public Criteria andTparentidIsNotNull() {
            addCriterion("TPARENTID is not null");
            return (Criteria) this;
        }

        public Criteria andTparentidEqualTo(Integer value) {
            addCriterion("TPARENTID =", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidNotEqualTo(Integer value) {
            addCriterion("TPARENTID <>", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidGreaterThan(Integer value) {
            addCriterion("TPARENTID >", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidGreaterThanOrEqualTo(Integer value) {
            addCriterion("TPARENTID >=", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidLessThan(Integer value) {
            addCriterion("TPARENTID <", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidLessThanOrEqualTo(Integer value) {
            addCriterion("TPARENTID <=", value, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidIn(List<Integer> values) {
            addCriterion("TPARENTID in", values, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidNotIn(List<Integer> values) {
            addCriterion("TPARENTID not in", values, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidBetween(Integer value1, Integer value2) {
            addCriterion("TPARENTID between", value1, value2, "tparentid");
            return (Criteria) this;
        }

        public Criteria andTparentidNotBetween(Integer value1, Integer value2) {
            addCriterion("TPARENTID not between", value1, value2, "tparentid");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table type
     *
     * @mbg.generated do_not_delete_during_merge Fri Aug 31 20:36:08 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table type
     *
     * @mbg.generated Fri Aug 31 20:36:08 CST 2018
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