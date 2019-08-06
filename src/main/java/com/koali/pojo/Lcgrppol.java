package com.koali.pojo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.sql.Date;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-29-2019/5/29-15:46
 */
@Entity
public class Lcgrppol {
    private String grpPolNo;
    private String kindCode;
    private String riskCode;
    private String manageCom;
    private String grpName;
    private BigDecimal getRate;
    private BigDecimal bonusRate;
    private BigDecimal maxMedFee;
    private String outPayFlag;
    private String specFlag;
    private BigDecimal expPremium;
    private BigDecimal expAmnt;
    private Float manageFeeRate;
    private Short payIntv;
    private Date cValiDate;
    private String geppolstate;
    private String operatorcode;
    private String grppolOperator;
    private Date makeDate;
    private Integer waitPeriod;

    @Id
    @Column(name = "GrpPolNo", nullable = false, length = 20)
    public String getGrpPolNo() {
        return grpPolNo;
    }

    public void setGrpPolNo(String grpPolNo) {
        this.grpPolNo = grpPolNo;
    }

    @Basic
    @Column(name = "KindCode", nullable = true, length = 3)
    public String getKindCode() {
        return kindCode;
    }

    public void setKindCode(String kindCode) {
        this.kindCode = kindCode;
    }

    @Basic
    @Column(name = "RiskCode", nullable = true, length = 10)
    public String getRiskCode() {
        return riskCode;
    }

    public void setRiskCode(String riskCode) {
        this.riskCode = riskCode;
    }

    @Basic
    @Column(name = "ManageCom", nullable = true, length = 10)
    public String getManageCom() {
        return manageCom;
    }

    public void setManageCom(String manageCom) {
        this.manageCom = manageCom;
    }

    @Basic
    @Column(name = "GrpName", nullable = true, length = 30)
    public String getGrpName() {
        return grpName;
    }

    public void setGrpName(String grpName) {
        this.grpName = grpName;
    }

    @Basic
    @Column(name = "GetRate", nullable = true, precision = 6)
    public BigDecimal getGetRate() {
        return getRate;
    }

    public void setGetRate(BigDecimal getRate) {
        this.getRate = getRate;
    }

    @Basic
    @Column(name = "BonusRate", nullable = true, precision = 4)
    public BigDecimal getBonusRate() {
        return bonusRate;
    }

    public void setBonusRate(BigDecimal bonusRate) {
        this.bonusRate = bonusRate;
    }

    @Basic
    @Column(name = "MaxMedFee", nullable = true, precision = 2)
    public BigDecimal getMaxMedFee() {
        return maxMedFee;
    }

    public void setMaxMedFee(BigDecimal maxMedFee) {
        this.maxMedFee = maxMedFee;
    }

    @Basic
    @Column(name = "OutPayFlag", nullable = true, length = 2)
    public String getOutPayFlag() {
        return outPayFlag;
    }

    public void setOutPayFlag(String outPayFlag) {
        this.outPayFlag = outPayFlag;
    }

    @Basic
    @Column(name = "SpecFlag", nullable = true, length = 2)
    public String getSpecFlag() {
        return specFlag;
    }

    public void setSpecFlag(String specFlag) {
        this.specFlag = specFlag;
    }

    @Basic
    @Column(name = "ExpPremium", nullable = true, precision = 2)
    public BigDecimal getExpPremium() {
        return expPremium;
    }

    public void setExpPremium(BigDecimal expPremium) {
        this.expPremium = expPremium;
    }

    @Basic
    @Column(name = "ExpAmnt", nullable = true, precision = 2)
    public BigDecimal getExpAmnt() {
        return expAmnt;
    }

    public void setExpAmnt(BigDecimal expAmnt) {
        this.expAmnt = expAmnt;
    }

    @Basic
    @Column(name = "ManageFeeRate", nullable = true, precision = 0)
    public Float getManageFeeRate() {
        return manageFeeRate;
    }

    public void setManageFeeRate(Float manageFeeRate) {
        this.manageFeeRate = manageFeeRate;
    }

    @Basic
    @Column(name = "PayIntv", nullable = true)
    public Short getPayIntv() {
        return payIntv;
    }

    public void setPayIntv(Short payIntv) {
        this.payIntv = payIntv;
    }

    @Basic
    @Column(name = "CValiDate", nullable = true)
    public Date getcValiDate() {
        return cValiDate;
    }

    public void setcValiDate(Date cValiDate) {
        this.cValiDate = cValiDate;
    }

    @Basic
    @Column(name = "geppolstate", nullable = true, length = 10)
    public String getGeppolstate() {
        return geppolstate;
    }

    public void setGeppolstate(String geppolstate) {
        this.geppolstate = geppolstate;
    }

    @Basic
    @Column(name = "Operatorcode", nullable = true, length = 10)
    public String getOperatorcode() {
        return operatorcode;
    }

    public void setOperatorcode(String operatorcode) {
        this.operatorcode = operatorcode;
    }

    @Basic
    @Column(name = "grppolOperator", nullable = true, length = 20)
    public String getGrppolOperator() {
        return grppolOperator;
    }

    public void setGrppolOperator(String grppolOperator) {
        this.grppolOperator = grppolOperator;
    }

    @Basic
    @Column(name = "MakeDate", nullable = true)
    public Date getMakeDate() {
        return makeDate;
    }

    public void setMakeDate(Date makeDate) {
        this.makeDate = makeDate;
    }

    @Basic
    @Column(name = "WaitPeriod", nullable = true)
    public Integer getWaitPeriod() {
        return waitPeriod;
    }

    public void setWaitPeriod(Integer waitPeriod) {
        this.waitPeriod = waitPeriod;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lcgrppol lcgrppol = (Lcgrppol) o;

        if (grpPolNo != null ? !grpPolNo.equals(lcgrppol.grpPolNo) : lcgrppol.grpPolNo != null) return false;
        if (kindCode != null ? !kindCode.equals(lcgrppol.kindCode) : lcgrppol.kindCode != null) return false;
        if (riskCode != null ? !riskCode.equals(lcgrppol.riskCode) : lcgrppol.riskCode != null) return false;
        if (manageCom != null ? !manageCom.equals(lcgrppol.manageCom) : lcgrppol.manageCom != null) return false;
        if (grpName != null ? !grpName.equals(lcgrppol.grpName) : lcgrppol.grpName != null) return false;
        if (getRate != null ? !getRate.equals(lcgrppol.getRate) : lcgrppol.getRate != null) return false;
        if (bonusRate != null ? !bonusRate.equals(lcgrppol.bonusRate) : lcgrppol.bonusRate != null) return false;
        if (maxMedFee != null ? !maxMedFee.equals(lcgrppol.maxMedFee) : lcgrppol.maxMedFee != null) return false;
        if (outPayFlag != null ? !outPayFlag.equals(lcgrppol.outPayFlag) : lcgrppol.outPayFlag != null) return false;
        if (specFlag != null ? !specFlag.equals(lcgrppol.specFlag) : lcgrppol.specFlag != null) return false;
        if (expPremium != null ? !expPremium.equals(lcgrppol.expPremium) : lcgrppol.expPremium != null) return false;
        if (expAmnt != null ? !expAmnt.equals(lcgrppol.expAmnt) : lcgrppol.expAmnt != null) return false;
        if (manageFeeRate != null ? !manageFeeRate.equals(lcgrppol.manageFeeRate) : lcgrppol.manageFeeRate != null)
            return false;
        if (payIntv != null ? !payIntv.equals(lcgrppol.payIntv) : lcgrppol.payIntv != null) return false;
        if (cValiDate != null ? !cValiDate.equals(lcgrppol.cValiDate) : lcgrppol.cValiDate != null) return false;
        if (geppolstate != null ? !geppolstate.equals(lcgrppol.geppolstate) : lcgrppol.geppolstate != null)
            return false;
        if (operatorcode != null ? !operatorcode.equals(lcgrppol.operatorcode) : lcgrppol.operatorcode != null)
            return false;
        if (grppolOperator != null ? !grppolOperator.equals(lcgrppol.grppolOperator) : lcgrppol.grppolOperator != null)
            return false;
        if (makeDate != null ? !makeDate.equals(lcgrppol.makeDate) : lcgrppol.makeDate != null) return false;
        if (waitPeriod != null ? !waitPeriod.equals(lcgrppol.waitPeriod) : lcgrppol.waitPeriod != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = grpPolNo != null ? grpPolNo.hashCode() : 0;
        result = 31 * result + (kindCode != null ? kindCode.hashCode() : 0);
        result = 31 * result + (riskCode != null ? riskCode.hashCode() : 0);
        result = 31 * result + (manageCom != null ? manageCom.hashCode() : 0);
        result = 31 * result + (grpName != null ? grpName.hashCode() : 0);
        result = 31 * result + (getRate != null ? getRate.hashCode() : 0);
        result = 31 * result + (bonusRate != null ? bonusRate.hashCode() : 0);
        result = 31 * result + (maxMedFee != null ? maxMedFee.hashCode() : 0);
        result = 31 * result + (outPayFlag != null ? outPayFlag.hashCode() : 0);
        result = 31 * result + (specFlag != null ? specFlag.hashCode() : 0);
        result = 31 * result + (expPremium != null ? expPremium.hashCode() : 0);
        result = 31 * result + (expAmnt != null ? expAmnt.hashCode() : 0);
        result = 31 * result + (manageFeeRate != null ? manageFeeRate.hashCode() : 0);
        result = 31 * result + (payIntv != null ? payIntv.hashCode() : 0);
        result = 31 * result + (cValiDate != null ? cValiDate.hashCode() : 0);
        result = 31 * result + (geppolstate != null ? geppolstate.hashCode() : 0);
        result = 31 * result + (operatorcode != null ? operatorcode.hashCode() : 0);
        result = 31 * result + (grppolOperator != null ? grppolOperator.hashCode() : 0);
        result = 31 * result + (makeDate != null ? makeDate.hashCode() : 0);
        result = 31 * result + (waitPeriod != null ? waitPeriod.hashCode() : 0);
        return result;
    }
}
