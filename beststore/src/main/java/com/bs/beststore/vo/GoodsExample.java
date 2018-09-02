package com.bs.beststore.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GoodsExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public GoodsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
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
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
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

        public Criteria andGnameIsNull() {
            addCriterion("GNAME is null");
            return (Criteria) this;
        }

        public Criteria andGnameIsNotNull() {
            addCriterion("GNAME is not null");
            return (Criteria) this;
        }

        public Criteria andGnameEqualTo(String value) {
            addCriterion("GNAME =", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotEqualTo(String value) {
            addCriterion("GNAME <>", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameGreaterThan(String value) {
            addCriterion("GNAME >", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameGreaterThanOrEqualTo(String value) {
            addCriterion("GNAME >=", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLessThan(String value) {
            addCriterion("GNAME <", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLessThanOrEqualTo(String value) {
            addCriterion("GNAME <=", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameLike(String value) {
            addCriterion("GNAME like", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotLike(String value) {
            addCriterion("GNAME not like", value, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameIn(List<String> values) {
            addCriterion("GNAME in", values, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotIn(List<String> values) {
            addCriterion("GNAME not in", values, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameBetween(String value1, String value2) {
            addCriterion("GNAME between", value1, value2, "gname");
            return (Criteria) this;
        }

        public Criteria andGnameNotBetween(String value1, String value2) {
            addCriterion("GNAME not between", value1, value2, "gname");
            return (Criteria) this;
        }

        public Criteria andGlastpriceIsNull() {
            addCriterion("GLASTPRICE is null");
            return (Criteria) this;
        }

        public Criteria andGlastpriceIsNotNull() {
            addCriterion("GLASTPRICE is not null");
            return (Criteria) this;
        }

        public Criteria andGlastpriceEqualTo(Double value) {
            addCriterion("GLASTPRICE =", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceNotEqualTo(Double value) {
            addCriterion("GLASTPRICE <>", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceGreaterThan(Double value) {
            addCriterion("GLASTPRICE >", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("GLASTPRICE >=", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceLessThan(Double value) {
            addCriterion("GLASTPRICE <", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceLessThanOrEqualTo(Double value) {
            addCriterion("GLASTPRICE <=", value, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceIn(List<Double> values) {
            addCriterion("GLASTPRICE in", values, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceNotIn(List<Double> values) {
            addCriterion("GLASTPRICE not in", values, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceBetween(Double value1, Double value2) {
            addCriterion("GLASTPRICE between", value1, value2, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGlastpriceNotBetween(Double value1, Double value2) {
            addCriterion("GLASTPRICE not between", value1, value2, "glastprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceIsNull() {
            addCriterion("GNOWPRICE is null");
            return (Criteria) this;
        }

        public Criteria andGnowpriceIsNotNull() {
            addCriterion("GNOWPRICE is not null");
            return (Criteria) this;
        }

        public Criteria andGnowpriceEqualTo(Double value) {
            addCriterion("GNOWPRICE =", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceNotEqualTo(Double value) {
            addCriterion("GNOWPRICE <>", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceGreaterThan(Double value) {
            addCriterion("GNOWPRICE >", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("GNOWPRICE >=", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceLessThan(Double value) {
            addCriterion("GNOWPRICE <", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceLessThanOrEqualTo(Double value) {
            addCriterion("GNOWPRICE <=", value, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceIn(List<Double> values) {
            addCriterion("GNOWPRICE in", values, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceNotIn(List<Double> values) {
            addCriterion("GNOWPRICE not in", values, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceBetween(Double value1, Double value2) {
            addCriterion("GNOWPRICE between", value1, value2, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGnowpriceNotBetween(Double value1, Double value2) {
            addCriterion("GNOWPRICE not between", value1, value2, "gnowprice");
            return (Criteria) this;
        }

        public Criteria andGdescIsNull() {
            addCriterion("GDESC is null");
            return (Criteria) this;
        }

        public Criteria andGdescIsNotNull() {
            addCriterion("GDESC is not null");
            return (Criteria) this;
        }

        public Criteria andGdescEqualTo(String value) {
            addCriterion("GDESC =", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescNotEqualTo(String value) {
            addCriterion("GDESC <>", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescGreaterThan(String value) {
            addCriterion("GDESC >", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescGreaterThanOrEqualTo(String value) {
            addCriterion("GDESC >=", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescLessThan(String value) {
            addCriterion("GDESC <", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescLessThanOrEqualTo(String value) {
            addCriterion("GDESC <=", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescLike(String value) {
            addCriterion("GDESC like", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescNotLike(String value) {
            addCriterion("GDESC not like", value, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescIn(List<String> values) {
            addCriterion("GDESC in", values, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescNotIn(List<String> values) {
            addCriterion("GDESC not in", values, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescBetween(String value1, String value2) {
            addCriterion("GDESC between", value1, value2, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGdescNotBetween(String value1, String value2) {
            addCriterion("GDESC not between", value1, value2, "gdesc");
            return (Criteria) this;
        }

        public Criteria andGradeIsNull() {
            addCriterion("GRADE is null");
            return (Criteria) this;
        }

        public Criteria andGradeIsNotNull() {
            addCriterion("GRADE is not null");
            return (Criteria) this;
        }

        public Criteria andGradeEqualTo(Double value) {
            addCriterion("GRADE =", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotEqualTo(Double value) {
            addCriterion("GRADE <>", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeGreaterThan(Double value) {
            addCriterion("GRADE >", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeGreaterThanOrEqualTo(Double value) {
            addCriterion("GRADE >=", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeLessThan(Double value) {
            addCriterion("GRADE <", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeLessThanOrEqualTo(Double value) {
            addCriterion("GRADE <=", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeIn(List<Double> values) {
            addCriterion("GRADE in", values, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotIn(List<Double> values) {
            addCriterion("GRADE not in", values, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeBetween(Double value1, Double value2) {
            addCriterion("GRADE between", value1, value2, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotBetween(Double value1, Double value2) {
            addCriterion("GRADE not between", value1, value2, "grade");
            return (Criteria) this;
        }

        public Criteria andGpublishIsNull() {
            addCriterion("GPUBLISH is null");
            return (Criteria) this;
        }

        public Criteria andGpublishIsNotNull() {
            addCriterion("GPUBLISH is not null");
            return (Criteria) this;
        }

        public Criteria andGpublishEqualTo(Date value) {
            addCriterion("GPUBLISH =", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishNotEqualTo(Date value) {
            addCriterion("GPUBLISH <>", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishGreaterThan(Date value) {
            addCriterion("GPUBLISH >", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishGreaterThanOrEqualTo(Date value) {
            addCriterion("GPUBLISH >=", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishLessThan(Date value) {
            addCriterion("GPUBLISH <", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishLessThanOrEqualTo(Date value) {
            addCriterion("GPUBLISH <=", value, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishIn(List<Date> values) {
            addCriterion("GPUBLISH in", values, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishNotIn(List<Date> values) {
            addCriterion("GPUBLISH not in", values, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishBetween(Date value1, Date value2) {
            addCriterion("GPUBLISH between", value1, value2, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGpublishNotBetween(Date value1, Date value2) {
            addCriterion("GPUBLISH not between", value1, value2, "gpublish");
            return (Criteria) this;
        }

        public Criteria andGnumberIsNull() {
            addCriterion("GNUMBER is null");
            return (Criteria) this;
        }

        public Criteria andGnumberIsNotNull() {
            addCriterion("GNUMBER is not null");
            return (Criteria) this;
        }

        public Criteria andGnumberEqualTo(Integer value) {
            addCriterion("GNUMBER =", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberNotEqualTo(Integer value) {
            addCriterion("GNUMBER <>", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberGreaterThan(Integer value) {
            addCriterion("GNUMBER >", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("GNUMBER >=", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberLessThan(Integer value) {
            addCriterion("GNUMBER <", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberLessThanOrEqualTo(Integer value) {
            addCriterion("GNUMBER <=", value, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberIn(List<Integer> values) {
            addCriterion("GNUMBER in", values, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberNotIn(List<Integer> values) {
            addCriterion("GNUMBER not in", values, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberBetween(Integer value1, Integer value2) {
            addCriterion("GNUMBER between", value1, value2, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("GNUMBER not between", value1, value2, "gnumber");
            return (Criteria) this;
        }

        public Criteria andGphotopicIsNull() {
            addCriterion("GPHOTOPIC is null");
            return (Criteria) this;
        }

        public Criteria andGphotopicIsNotNull() {
            addCriterion("GPHOTOPIC is not null");
            return (Criteria) this;
        }

        public Criteria andGphotopicEqualTo(String value) {
            addCriterion("GPHOTOPIC =", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicNotEqualTo(String value) {
            addCriterion("GPHOTOPIC <>", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicGreaterThan(String value) {
            addCriterion("GPHOTOPIC >", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicGreaterThanOrEqualTo(String value) {
            addCriterion("GPHOTOPIC >=", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicLessThan(String value) {
            addCriterion("GPHOTOPIC <", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicLessThanOrEqualTo(String value) {
            addCriterion("GPHOTOPIC <=", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicLike(String value) {
            addCriterion("GPHOTOPIC like", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicNotLike(String value) {
            addCriterion("GPHOTOPIC not like", value, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicIn(List<String> values) {
            addCriterion("GPHOTOPIC in", values, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicNotIn(List<String> values) {
            addCriterion("GPHOTOPIC not in", values, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicBetween(String value1, String value2) {
            addCriterion("GPHOTOPIC between", value1, value2, "gphotopic");
            return (Criteria) this;
        }

        public Criteria andGphotopicNotBetween(String value1, String value2) {
            addCriterion("GPHOTOPIC not between", value1, value2, "gphotopic");
            return (Criteria) this;
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

        public Criteria andGstatusIsNull() {
            addCriterion("GSTATUS is null");
            return (Criteria) this;
        }

        public Criteria andGstatusIsNotNull() {
            addCriterion("GSTATUS is not null");
            return (Criteria) this;
        }

        public Criteria andGstatusEqualTo(Integer value) {
            addCriterion("GSTATUS =", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusNotEqualTo(Integer value) {
            addCriterion("GSTATUS <>", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusGreaterThan(Integer value) {
            addCriterion("GSTATUS >", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("GSTATUS >=", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusLessThan(Integer value) {
            addCriterion("GSTATUS <", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusLessThanOrEqualTo(Integer value) {
            addCriterion("GSTATUS <=", value, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusIn(List<Integer> values) {
            addCriterion("GSTATUS in", values, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusNotIn(List<Integer> values) {
            addCriterion("GSTATUS not in", values, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusBetween(Integer value1, Integer value2) {
            addCriterion("GSTATUS between", value1, value2, "gstatus");
            return (Criteria) this;
        }

        public Criteria andGstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("GSTATUS not between", value1, value2, "gstatus");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table goods
     *
     * @mbg.generated do_not_delete_during_merge Sun Sep 02 10:28:23 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table goods
     *
     * @mbg.generated Sun Sep 02 10:28:23 CST 2018
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