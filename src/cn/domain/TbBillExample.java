package cn.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TbBillExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbBillExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andBillUserIdIsNull() {
            addCriterion("bill_user_id is null");
            return (Criteria) this;
        }

        public Criteria andBillUserIdIsNotNull() {
            addCriterion("bill_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andBillUserIdEqualTo(Integer value) {
            addCriterion("bill_user_id =", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdNotEqualTo(Integer value) {
            addCriterion("bill_user_id <>", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdGreaterThan(Integer value) {
            addCriterion("bill_user_id >", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("bill_user_id >=", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdLessThan(Integer value) {
            addCriterion("bill_user_id <", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("bill_user_id <=", value, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdIn(List<Integer> values) {
            addCriterion("bill_user_id in", values, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdNotIn(List<Integer> values) {
            addCriterion("bill_user_id not in", values, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdBetween(Integer value1, Integer value2) {
            addCriterion("bill_user_id between", value1, value2, "billUserId");
            return (Criteria) this;
        }

        public Criteria andBillUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("bill_user_id not between", value1, value2, "billUserId");
            return (Criteria) this;
        }

        public Criteria andTotalPriceIsNull() {
            addCriterion("total_price is null");
            return (Criteria) this;
        }

        public Criteria andTotalPriceIsNotNull() {
            addCriterion("total_price is not null");
            return (Criteria) this;
        }

        public Criteria andTotalPriceEqualTo(BigDecimal value) {
            addCriterion("total_price =", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceNotEqualTo(BigDecimal value) {
            addCriterion("total_price <>", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceGreaterThan(BigDecimal value) {
            addCriterion("total_price >", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("total_price >=", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceLessThan(BigDecimal value) {
            addCriterion("total_price <", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("total_price <=", value, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceIn(List<BigDecimal> values) {
            addCriterion("total_price in", values, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceNotIn(List<BigDecimal> values) {
            addCriterion("total_price not in", values, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("total_price between", value1, value2, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andTotalPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("total_price not between", value1, value2, "totalPrice");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodIsNull() {
            addCriterion("delivery_method is null");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodIsNotNull() {
            addCriterion("delivery_method is not null");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodEqualTo(String value) {
            addCriterion("delivery_method =", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodNotEqualTo(String value) {
            addCriterion("delivery_method <>", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodGreaterThan(String value) {
            addCriterion("delivery_method >", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodGreaterThanOrEqualTo(String value) {
            addCriterion("delivery_method >=", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodLessThan(String value) {
            addCriterion("delivery_method <", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodLessThanOrEqualTo(String value) {
            addCriterion("delivery_method <=", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodLike(String value) {
            addCriterion("delivery_method like", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodNotLike(String value) {
            addCriterion("delivery_method not like", value, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodIn(List<String> values) {
            addCriterion("delivery_method in", values, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodNotIn(List<String> values) {
            addCriterion("delivery_method not in", values, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodBetween(String value1, String value2) {
            addCriterion("delivery_method between", value1, value2, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andDeliveryMethodNotBetween(String value1, String value2) {
            addCriterion("delivery_method not between", value1, value2, "deliveryMethod");
            return (Criteria) this;
        }

        public Criteria andMemoIsNull() {
            addCriterion("memo is null");
            return (Criteria) this;
        }

        public Criteria andMemoIsNotNull() {
            addCriterion("memo is not null");
            return (Criteria) this;
        }

        public Criteria andMemoEqualTo(String value) {
            addCriterion("memo =", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoNotEqualTo(String value) {
            addCriterion("memo <>", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoGreaterThan(String value) {
            addCriterion("memo >", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoGreaterThanOrEqualTo(String value) {
            addCriterion("memo >=", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoLessThan(String value) {
            addCriterion("memo <", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoLessThanOrEqualTo(String value) {
            addCriterion("memo <=", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoLike(String value) {
            addCriterion("memo like", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoNotLike(String value) {
            addCriterion("memo not like", value, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoIn(List<String> values) {
            addCriterion("memo in", values, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoNotIn(List<String> values) {
            addCriterion("memo not in", values, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoBetween(String value1, String value2) {
            addCriterion("memo between", value1, value2, "memo");
            return (Criteria) this;
        }

        public Criteria andMemoNotBetween(String value1, String value2) {
            addCriterion("memo not between", value1, value2, "memo");
            return (Criteria) this;
        }

        public Criteria andDeliverySignIsNull() {
            addCriterion("delivery_sign is null");
            return (Criteria) this;
        }

        public Criteria andDeliverySignIsNotNull() {
            addCriterion("delivery_sign is not null");
            return (Criteria) this;
        }

        public Criteria andDeliverySignEqualTo(Boolean value) {
            addCriterion("delivery_sign =", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignNotEqualTo(Boolean value) {
            addCriterion("delivery_sign <>", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignGreaterThan(Boolean value) {
            addCriterion("delivery_sign >", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignGreaterThanOrEqualTo(Boolean value) {
            addCriterion("delivery_sign >=", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignLessThan(Boolean value) {
            addCriterion("delivery_sign <", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignLessThanOrEqualTo(Boolean value) {
            addCriterion("delivery_sign <=", value, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignIn(List<Boolean> values) {
            addCriterion("delivery_sign in", values, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignNotIn(List<Boolean> values) {
            addCriterion("delivery_sign not in", values, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignBetween(Boolean value1, Boolean value2) {
            addCriterion("delivery_sign between", value1, value2, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andDeliverySignNotBetween(Boolean value1, Boolean value2) {
            addCriterion("delivery_sign not between", value1, value2, "deliverySign");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andPaymentIdIsNull() {
            addCriterion("payment_id is null");
            return (Criteria) this;
        }

        public Criteria andPaymentIdIsNotNull() {
            addCriterion("payment_id is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentIdEqualTo(Integer value) {
            addCriterion("payment_id =", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdNotEqualTo(Integer value) {
            addCriterion("payment_id <>", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdGreaterThan(Integer value) {
            addCriterion("payment_id >", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("payment_id >=", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdLessThan(Integer value) {
            addCriterion("payment_id <", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdLessThanOrEqualTo(Integer value) {
            addCriterion("payment_id <=", value, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdIn(List<Integer> values) {
            addCriterion("payment_id in", values, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdNotIn(List<Integer> values) {
            addCriterion("payment_id not in", values, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdBetween(Integer value1, Integer value2) {
            addCriterion("payment_id between", value1, value2, "paymentId");
            return (Criteria) this;
        }

        public Criteria andPaymentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("payment_id not between", value1, value2, "paymentId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

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