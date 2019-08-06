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
public class Lcgrpcont {
    private String grpContNo;
    private String grppolNo;
    private String specFlag;
    private String grpuid;
    private String saleChnl;
    private String manageCom;
    private String appntNo;
    private String appntname;
    private String insuredType;
    private String grpName;
    private String businessType;
    private String grpNature;
    private BigDecimal rgtMoney;
    private BigDecimal asset;
    private String mainBussiness;
    private String corporation;
    private String fax;
    private String phone;
    private String getFlag;
    private String satrap;
    private String eMail;
    private String payMode;
    private String signCom;
    private Date signDate;
    private Date cValiDate;
    private Float manageFeeRate;
    private Integer peoples;
    private BigDecimal prem;
    private BigDecimal amnt;
    private String remark;
    private String amntGrade;
    private Date uwDate;
    private String uwOperator;
    private String uwOperatorcode;
    private String uwFlag;
    private Date approveDate;
    private String approvename;
    private String approveCode;
    private String approveFlag;
    private Date inputDate;
    private String inputOperator;
    private String payflag;

    @Id
    @Column(name = "GrpContNo", nullable = false, length = 30)
    public String getGrpContNo() {
        return grpContNo;
    }

    public void setGrpContNo(String grpContNo) {
        this.grpContNo = grpContNo;
    }

    @Basic
    @Column(name = "GrppolNo", nullable = true, length = 10)
    public String getGrppolNo() {
        return grppolNo;
    }

    public void setGrppolNo(String grppolNo) {
        this.grppolNo = grppolNo;
    }

    @Basic
    @Column(name = "SpecFlag", nullable = true, length = 255)
    public String getSpecFlag() {
        return specFlag;
    }

    public void setSpecFlag(String specFlag) {
        this.specFlag = specFlag;
    }

    @Basic
    @Column(name = "grpuid", nullable = true, length = 30)
    public String getGrpuid() {
        return grpuid;
    }

    public void setGrpuid(String grpuid) {
        this.grpuid = grpuid;
    }

    @Basic
    @Column(name = "SaleChnl", nullable = true, length = 2)
    public String getSaleChnl() {
        return saleChnl;
    }

    public void setSaleChnl(String saleChnl) {
        this.saleChnl = saleChnl;
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
    @Column(name = "AppntNo", nullable = true, length = 30)
    public String getAppntNo() {
        return appntNo;
    }

    public void setAppntNo(String appntNo) {
        this.appntNo = appntNo;
    }

    @Basic
    @Column(name = "Appntname", nullable = true, length = 50)
    public String getAppntname() {
        return appntname;
    }

    public void setAppntname(String appntname) {
        this.appntname = appntname;
    }

    @Basic
    @Column(name = "insuredType", nullable = true)
    public String getInsuredType() {
        return insuredType;
    }

    public void setInsuredType(String insuredType) {
        this.insuredType = insuredType;
    }

    @Basic
    @Column(name = "GrpName", nullable = true, length = 200)
    public String getGrpName() {
        return grpName;
    }

    public void setGrpName(String grpName) {
        this.grpName = grpName;
    }

    @Basic
    @Column(name = "BusinessType", nullable = true, length = 20)
    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    @Basic
    @Column(name = "GrpNature", nullable = true, length = 10)
    public String getGrpNature() {
        return grpNature;
    }

    public void setGrpNature(String grpNature) {
        this.grpNature = grpNature;
    }

    @Basic
    @Column(name = "RgtMoney", nullable = true, precision = 2)
    public BigDecimal getRgtMoney() {
        return rgtMoney;
    }

    public void setRgtMoney(BigDecimal rgtMoney) {
        this.rgtMoney = rgtMoney;
    }

    @Basic
    @Column(name = "Asset", nullable = true, precision = 2)
    public BigDecimal getAsset() {
        return asset;
    }

    public void setAsset(BigDecimal asset) {
        this.asset = asset;
    }

    @Basic
    @Column(name = "MainBussiness", nullable = true, length = 60)
    public String getMainBussiness() {
        return mainBussiness;
    }

    public void setMainBussiness(String mainBussiness) {
        this.mainBussiness = mainBussiness;
    }

    @Basic
    @Column(name = "Corporation", nullable = true, length = 20)
    public String getCorporation() {
        return corporation;
    }

    public void setCorporation(String corporation) {
        this.corporation = corporation;
    }

    @Basic
    @Column(name = "Fax", nullable = true, length = 18)
    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    @Basic
    @Column(name = "Phone", nullable = true, length = 18)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "GetFlag", nullable = true, length = 2)
    public String getGetFlag() {
        return getFlag;
    }

    public void setGetFlag(String getFlag) {
        this.getFlag = getFlag;
    }

    @Basic
    @Column(name = "Satrap", nullable = true, length = 10)
    public String getSatrap() {
        return satrap;
    }

    public void setSatrap(String satrap) {
        this.satrap = satrap;
    }

    @Basic
    @Column(name = "EMail", nullable = true, length = 20)
    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    @Basic
    @Column(name = "PayMode", nullable = true, length = 2)
    public String getPayMode() {
        return payMode;
    }

    public void setPayMode(String payMode) {
        this.payMode = payMode;
    }

    @Basic
    @Column(name = "SignCom", nullable = true, length = 10)
    public String getSignCom() {
        return signCom;
    }

    public void setSignCom(String signCom) {
        this.signCom = signCom;
    }

    @Basic
    @Column(name = "SignDate", nullable = true)
    public Date getSignDate() {
        return signDate;
    }

    public void setSignDate(Date signDate) {
        this.signDate = signDate;
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
    @Column(name = "ManageFeeRate", nullable = true, precision = 0)
    public Float getManageFeeRate() {
        return manageFeeRate;
    }

    public void setManageFeeRate(Float manageFeeRate) {
        this.manageFeeRate = manageFeeRate;
    }

    @Basic
    @Column(name = "Peoples", nullable = true)
    public Integer getPeoples() {
        return peoples;
    }

    public void setPeoples(Integer peoples) {
        this.peoples = peoples;
    }

    @Basic
    @Column(name = "Prem", nullable = true, precision = 2)
    public BigDecimal getPrem() {
        return prem;
    }

    public void setPrem(BigDecimal prem) {
        this.prem = prem;
    }

    @Basic
    @Column(name = "Amnt", nullable = true, precision = 2)
    public BigDecimal getAmnt() {
        return amnt;
    }

    public void setAmnt(BigDecimal amnt) {
        this.amnt = amnt;
    }

    @Basic
    @Column(name = "Remark", nullable = true, length = 255)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "AmntGrade", nullable = true, length = 2)
    public String getAmntGrade() {
        return amntGrade;
    }

    public void setAmntGrade(String amntGrade) {
        this.amntGrade = amntGrade;
    }

    @Basic
    @Column(name = "UWDate", nullable = true)
    public Date getUwDate() {
        return uwDate;
    }

    public void setUwDate(Date uwDate) {
        this.uwDate = uwDate;
    }

    @Basic
    @Column(name = "UWOperator", nullable = true, length = 20)
    public String getUwOperator() {
        return uwOperator;
    }

    public void setUwOperator(String uwOperator) {
        this.uwOperator = uwOperator;
    }

    @Basic
    @Column(name = "UWOperatorcode", nullable = true, length = 10)
    public String getUwOperatorcode() {
        return uwOperatorcode;
    }

    public void setUwOperatorcode(String uwOperatorcode) {
        this.uwOperatorcode = uwOperatorcode;
    }

    @Basic
    @Column(name = "UWFlag", nullable = true, length = 2)
    public String getUwFlag() {
        return uwFlag;
    }

    public void setUwFlag(String uwFlag) {
        this.uwFlag = uwFlag;
    }

    @Basic
    @Column(name = "ApproveDate", nullable = true)
    public Date getApproveDate() {
        return approveDate;
    }

    public void setApproveDate(Date approveDate) {
        this.approveDate = approveDate;
    }

    @Basic
    @Column(name = "Approvename", nullable = true, length = 20)
    public String getApprovename() {
        return approvename;
    }

    public void setApprovename(String approvename) {
        this.approvename = approvename;
    }

    @Basic
    @Column(name = "ApproveCode", nullable = true, length = 10)
    public String getApproveCode() {
        return approveCode;
    }

    public void setApproveCode(String approveCode) {
        this.approveCode = approveCode;
    }

    @Basic
    @Column(name = "ApproveFlag", nullable = true, length = 2)
    public String getApproveFlag() {
        return approveFlag;
    }

    public void setApproveFlag(String approveFlag) {
        this.approveFlag = approveFlag;
    }

    @Basic
    @Column(name = "InputDate", nullable = true)
    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
    }

    @Basic
    @Column(name = "InputOperator", nullable = true, length = 20)
    public String getInputOperator() {
        return inputOperator;
    }

    public void setInputOperator(String inputOperator) {
        this.inputOperator = inputOperator;
    }

    @Basic
    @Column(name = "payflag", nullable = true, length = 2)
    public String getPayflag() {
        return payflag;
    }

    public void setPayflag(String payflag) {
        this.payflag = payflag;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lcgrpcont lcgrpcont = (Lcgrpcont) o;

        if (grpContNo != null ? !grpContNo.equals(lcgrpcont.grpContNo) : lcgrpcont.grpContNo != null) return false;
        if (grppolNo != null ? !grppolNo.equals(lcgrpcont.grppolNo) : lcgrpcont.grppolNo != null) return false;
        if (specFlag != null ? !specFlag.equals(lcgrpcont.specFlag) : lcgrpcont.specFlag != null) return false;
        if (grpuid != null ? !grpuid.equals(lcgrpcont.grpuid) : lcgrpcont.grpuid != null) return false;
        if (saleChnl != null ? !saleChnl.equals(lcgrpcont.saleChnl) : lcgrpcont.saleChnl != null) return false;
        if (manageCom != null ? !manageCom.equals(lcgrpcont.manageCom) : lcgrpcont.manageCom != null) return false;
        if (appntNo != null ? !appntNo.equals(lcgrpcont.appntNo) : lcgrpcont.appntNo != null) return false;
        if (appntname != null ? !appntname.equals(lcgrpcont.appntname) : lcgrpcont.appntname != null) return false;
        if (insuredType != null ? !insuredType.equals(lcgrpcont.insuredType) : lcgrpcont.insuredType != null) return false;
        if (grpName != null ? !grpName.equals(lcgrpcont.grpName) : lcgrpcont.grpName != null) return false;
        if (businessType != null ? !businessType.equals(lcgrpcont.businessType) : lcgrpcont.businessType != null)
            return false;
        if (grpNature != null ? !grpNature.equals(lcgrpcont.grpNature) : lcgrpcont.grpNature != null) return false;
        if (rgtMoney != null ? !rgtMoney.equals(lcgrpcont.rgtMoney) : lcgrpcont.rgtMoney != null) return false;
        if (asset != null ? !asset.equals(lcgrpcont.asset) : lcgrpcont.asset != null) return false;
        if (mainBussiness != null ? !mainBussiness.equals(lcgrpcont.mainBussiness) : lcgrpcont.mainBussiness != null)
            return false;
        if (corporation != null ? !corporation.equals(lcgrpcont.corporation) : lcgrpcont.corporation != null)
            return false;
        if (fax != null ? !fax.equals(lcgrpcont.fax) : lcgrpcont.fax != null) return false;
        if (phone != null ? !phone.equals(lcgrpcont.phone) : lcgrpcont.phone != null) return false;
        if (getFlag != null ? !getFlag.equals(lcgrpcont.getFlag) : lcgrpcont.getFlag != null) return false;
        if (satrap != null ? !satrap.equals(lcgrpcont.satrap) : lcgrpcont.satrap != null) return false;
        if (eMail != null ? !eMail.equals(lcgrpcont.eMail) : lcgrpcont.eMail != null) return false;
        if (payMode != null ? !payMode.equals(lcgrpcont.payMode) : lcgrpcont.payMode != null) return false;
        if (signCom != null ? !signCom.equals(lcgrpcont.signCom) : lcgrpcont.signCom != null) return false;
        if (signDate != null ? !signDate.equals(lcgrpcont.signDate) : lcgrpcont.signDate != null) return false;
        if (cValiDate != null ? !cValiDate.equals(lcgrpcont.cValiDate) : lcgrpcont.cValiDate != null) return false;
        if (manageFeeRate != null ? !manageFeeRate.equals(lcgrpcont.manageFeeRate) : lcgrpcont.manageFeeRate != null)
            return false;
        if (peoples != null ? !peoples.equals(lcgrpcont.peoples) : lcgrpcont.peoples != null) return false;
        if (prem != null ? !prem.equals(lcgrpcont.prem) : lcgrpcont.prem != null) return false;
        if (amnt != null ? !amnt.equals(lcgrpcont.amnt) : lcgrpcont.amnt != null) return false;
        if (remark != null ? !remark.equals(lcgrpcont.remark) : lcgrpcont.remark != null) return false;
        if (amntGrade != null ? !amntGrade.equals(lcgrpcont.amntGrade) : lcgrpcont.amntGrade != null) return false;
        if (uwDate != null ? !uwDate.equals(lcgrpcont.uwDate) : lcgrpcont.uwDate != null) return false;
        if (uwOperator != null ? !uwOperator.equals(lcgrpcont.uwOperator) : lcgrpcont.uwOperator != null) return false;
        if (uwOperatorcode != null ? !uwOperatorcode.equals(lcgrpcont.uwOperatorcode) : lcgrpcont.uwOperatorcode != null)
            return false;
        if (uwFlag != null ? !uwFlag.equals(lcgrpcont.uwFlag) : lcgrpcont.uwFlag != null) return false;
        if (approveDate != null ? !approveDate.equals(lcgrpcont.approveDate) : lcgrpcont.approveDate != null)
            return false;
        if (approvename != null ? !approvename.equals(lcgrpcont.approvename) : lcgrpcont.approvename != null)
            return false;
        if (approveCode != null ? !approveCode.equals(lcgrpcont.approveCode) : lcgrpcont.approveCode != null)
            return false;
        if (approveFlag != null ? !approveFlag.equals(lcgrpcont.approveFlag) : lcgrpcont.approveFlag != null)
            return false;
        if (inputDate != null ? !inputDate.equals(lcgrpcont.inputDate) : lcgrpcont.inputDate != null) return false;
        if (inputOperator != null ? !inputOperator.equals(lcgrpcont.inputOperator) : lcgrpcont.inputOperator != null)
            return false;
        if (payflag != null ? !payflag.equals(lcgrpcont.payflag) : lcgrpcont.payflag != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = grpContNo != null ? grpContNo.hashCode() : 0;
        result = 31 * result + (grppolNo != null ? grppolNo.hashCode() : 0);
        result = 31 * result + (specFlag != null ? specFlag.hashCode() : 0);
        result = 31 * result + (grpuid != null ? grpuid.hashCode() : 0);
        result = 31 * result + (saleChnl != null ? saleChnl.hashCode() : 0);
        result = 31 * result + (manageCom != null ? manageCom.hashCode() : 0);
        result = 31 * result + (appntNo != null ? appntNo.hashCode() : 0);
        result = 31 * result + (appntname != null ? appntname.hashCode() : 0);
        result = 31 * result + (insuredType != null ? insuredType.hashCode() : 0);
        result = 31 * result + (grpName != null ? grpName.hashCode() : 0);
        result = 31 * result + (businessType != null ? businessType.hashCode() : 0);
        result = 31 * result + (grpNature != null ? grpNature.hashCode() : 0);
        result = 31 * result + (rgtMoney != null ? rgtMoney.hashCode() : 0);
        result = 31 * result + (asset != null ? asset.hashCode() : 0);
        result = 31 * result + (mainBussiness != null ? mainBussiness.hashCode() : 0);
        result = 31 * result + (corporation != null ? corporation.hashCode() : 0);
        result = 31 * result + (fax != null ? fax.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (getFlag != null ? getFlag.hashCode() : 0);
        result = 31 * result + (satrap != null ? satrap.hashCode() : 0);
        result = 31 * result + (eMail != null ? eMail.hashCode() : 0);
        result = 31 * result + (payMode != null ? payMode.hashCode() : 0);
        result = 31 * result + (signCom != null ? signCom.hashCode() : 0);
        result = 31 * result + (signDate != null ? signDate.hashCode() : 0);
        result = 31 * result + (cValiDate != null ? cValiDate.hashCode() : 0);
        result = 31 * result + (manageFeeRate != null ? manageFeeRate.hashCode() : 0);
        result = 31 * result + (peoples != null ? peoples.hashCode() : 0);
        result = 31 * result + (prem != null ? prem.hashCode() : 0);
        result = 31 * result + (amnt != null ? amnt.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (amntGrade != null ? amntGrade.hashCode() : 0);
        result = 31 * result + (uwDate != null ? uwDate.hashCode() : 0);
        result = 31 * result + (uwOperator != null ? uwOperator.hashCode() : 0);
        result = 31 * result + (uwOperatorcode != null ? uwOperatorcode.hashCode() : 0);
        result = 31 * result + (uwFlag != null ? uwFlag.hashCode() : 0);
        result = 31 * result + (approveDate != null ? approveDate.hashCode() : 0);
        result = 31 * result + (approvename != null ? approvename.hashCode() : 0);
        result = 31 * result + (approveCode != null ? approveCode.hashCode() : 0);
        result = 31 * result + (approveFlag != null ? approveFlag.hashCode() : 0);
        result = 31 * result + (inputDate != null ? inputDate.hashCode() : 0);
        result = 31 * result + (inputOperator != null ? inputOperator.hashCode() : 0);
        result = 31 * result + (payflag != null ? payflag.hashCode() : 0);
        return result;
    }
}
