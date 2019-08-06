package com.koali.pojo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-29-2019/5/29-15:46
 */
@Entity
public class Lcgrpinsured {
    private int orderid;
    private String grpContNo;
    private String name;
    private String sex;
    private Integer age;
    private String idnumber;

    @Id
    @Column(name = "orderid", nullable = false)
    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    @Basic
    @Column(name = "grpContNo", nullable = true, length = 30)
    public String getGrpContNo() {
        return grpContNo;
    }

    public void setGrpContNo(String grpContNo) {
        this.grpContNo = grpContNo;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 2)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "age", nullable = true)
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Basic
    @Column(name = "idnumber", nullable = true, length = 20)
    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lcgrpinsured that = (Lcgrpinsured) o;

        if (orderid != that.orderid) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (age != null ? !age.equals(that.age) : that.age != null) return false;
        if (idnumber != null ? !idnumber.equals(that.idnumber) : that.idnumber != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = orderid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (age != null ? age.hashCode() : 0);
        result = 31 * result + (idnumber != null ? idnumber.hashCode() : 0);
        return result;
    }
}
