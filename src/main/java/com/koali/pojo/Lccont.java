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
public class Lccont {
    private String contNo;
    private String polNo;
    private String manageCom;
    private String userid;
    private String saleChnl;
    private String appntNo;
    private String appntName;
    private String appntSex;
    private Date appntBirthday;
    private String appntIdType;
    private String appntIdNo;
    private String appntprovince;
    private String appntcity;
    private String appntcounty;
    private String appntaddress;
    private String appntphone;
    private String appntmailno;
    private String appntemail;
    private String appntmerry;
    private String financemsg;
    private String health;
    private String insuredName;
    private String insuredSex;
    private Date insuredBirthday;
    private String insuredIdType;
    private String insuredIdNo;
    private Integer insuredwork;
    private String insuredprovince;
    private String insuredcity;
    private String insuredcounty;
    private String insuredaddress;
    private String insuredphone;
    private String insuredmailno;
    private String insuredemail;
    private String insuredmerry;
    private String payMode;
    private String handlercode;
    private String handlername;
    private String signCom;
    private Date signDate;
    private String remark;
    private BigDecimal prem;
    private BigDecimal amnt;
    private Date cValiDate;
    private String inputOpecode;
    private String inputOperator;
    private Date inputDate;
    private String approveFlag;
    private String approveCode;
    private String approvename;
    private String approveDate;
    private String uwFlag;
    private String uwOperatorcode;
    private String uwOperator;
    private Date uwDate;
    private String payflag;
    private String contState;
    private String address;
    private String zipCode;
    private String benefitName;
    private String benefitSex;
    private Date benefitBirthday;
    private String benefitIdType;
    private String benefitIdNo;
    private String benefitaddress;
    private String benefitphone;
    private String benefitmailno;
    private String benefitemail;
    private String benefittype;

    @Id
    @Column(name = "ContNo", nullable = false, length = 30)
    public String getContNo() {
        return contNo;
    }

    public void setContNo(String contNo) {
        this.contNo = contNo;
    }

    @Basic
    @Column(name = "polNo", nullable = true, length = 10)
    public String getPolNo() {
        return polNo;
    }

    public void setPolNo(String polNo) {
        this.polNo = polNo;
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
    @Column(name = "userid", nullable = true, length = 30)
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
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
    @Column(name = "AppntNo", nullable = true, length = 30)
    public String getAppntNo() {
        return appntNo;
    }

    public void setAppntNo(String appntNo) {
        this.appntNo = appntNo;
    }

    @Basic
    @Column(name = "AppntName", nullable = true, length = 50)
    public String getAppntName() {
        return appntName;
    }

    public void setAppntName(String appntName) {
        this.appntName = appntName;
    }

    @Basic
    @Column(name = "AppntSex", nullable = true, length = 2)
    public String getAppntSex() {
        return appntSex;
    }

    public void setAppntSex(String appntSex) {
        this.appntSex = appntSex;
    }

    @Basic
    @Column(name = "AppntBirthday", nullable = true)
    public Date getAppntBirthday() {
        return appntBirthday;
    }

    public void setAppntBirthday(Date appntBirthday) {
        this.appntBirthday = appntBirthday;
    }

    @Basic
    @Column(name = "AppntIDType", nullable = true, length = 2)
    public String getAppntIdType() {
        return appntIdType;
    }

    public void setAppntIdType(String appntIdType) {
        this.appntIdType = appntIdType;
    }

    @Basic
    @Column(name = "AppntIDNo", nullable = true, length = 20)
    public String getAppntIdNo() {
        return appntIdNo;
    }

    public void setAppntIdNo(String appntIdNo) {
        this.appntIdNo = appntIdNo;
    }

    @Basic
    @Column(name = "Appntprovince", nullable = true, length = 50)
    public String getAppntprovince() {
        return appntprovince;
    }

    public void setAppntprovince(String appntprovince) {
        this.appntprovince = appntprovince;
    }

    @Basic
    @Column(name = "Appntcity", nullable = true, length = 50)
    public String getAppntcity() {
        return appntcity;
    }

    public void setAppntcity(String appntcity) {
        this.appntcity = appntcity;
    }

    @Basic
    @Column(name = "Appntcounty", nullable = true, length = 50)
    public String getAppntcounty() {
        return appntcounty;
    }

    public void setAppntcounty(String appntcounty) {
        this.appntcounty = appntcounty;
    }

    @Basic
    @Column(name = "Appntaddress", nullable = true, length = 200)
    public String getAppntaddress() {
        return appntaddress;
    }

    public void setAppntaddress(String appntaddress) {
        this.appntaddress = appntaddress;
    }

    @Basic
    @Column(name = "Appntphone", nullable = true, length = 20)
    public String getAppntphone() {
        return appntphone;
    }

    public void setAppntphone(String appntphone) {
        this.appntphone = appntphone;
    }

    @Basic
    @Column(name = "Appntmailno", nullable = true, length = 10)
    public String getAppntmailno() {
        return appntmailno;
    }

    public void setAppntmailno(String appntmailno) {
        this.appntmailno = appntmailno;
    }

    @Basic
    @Column(name = "Appntemail", nullable = true, length = 20)
    public String getAppntemail() {
        return appntemail;
    }

    public void setAppntemail(String appntemail) {
        this.appntemail = appntemail;
    }

    @Basic
    @Column(name = "Appntmerry", nullable = true, length = 20)
    public String getAppntmerry() {
        return appntmerry;
    }

    public void setAppntmerry(String appntmerry) {
        this.appntmerry = appntmerry;
    }

    @Basic
    @Column(name = "financemsg", nullable = true, length = 20)
    public String getFinancemsg() {
        return financemsg;
    }

    public void setFinancemsg(String financemsg) {
        this.financemsg = financemsg;
    }

    @Basic
    @Column(name = "health", nullable = true, length = 20)
    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    @Basic
    @Column(name = "InsuredName", nullable = true, length = 50)
    public String getInsuredName() {
        return insuredName;
    }

    public void setInsuredName(String insuredName) {
        this.insuredName = insuredName;
    }

    @Basic
    @Column(name = "InsuredSex", nullable = true, length = 2)
    public String getInsuredSex() {
        return insuredSex;
    }

    public void setInsuredSex(String insuredSex) {
        this.insuredSex = insuredSex;
    }

    @Basic
    @Column(name = "InsuredBirthday", nullable = true)
    public Date getInsuredBirthday() {
        return insuredBirthday;
    }

    public void setInsuredBirthday(Date insuredBirthday) {
        this.insuredBirthday = insuredBirthday;
    }

    @Basic
    @Column(name = "InsuredIDType", nullable = true, length = 2)
    public String getInsuredIdType() {
        return insuredIdType;
    }

    public void setInsuredIdType(String insuredIdType) {
        this.insuredIdType = insuredIdType;
    }

    @Basic
    @Column(name = "InsuredIDNo", nullable = true, length = 20)
    public String getInsuredIdNo() {
        return insuredIdNo;
    }

    public void setInsuredIdNo(String insuredIdNo) {
        this.insuredIdNo = insuredIdNo;
    }

    @Basic
    @Column(name = "Insuredwork", nullable = true)
    public Integer getInsuredwork() {
        return insuredwork;
    }

    public void setInsuredwork(Integer insuredwork) {
        this.insuredwork = insuredwork;
    }


    @Basic
    @Column(name = "Insuredprovince", nullable = true, length = 50)
    public String getInsuredprovince() {
        return insuredprovince;
    }

    public void setInsuredprovince(String insuredprovince) {
        this.insuredprovince = insuredprovince;
    }


    @Basic
    @Column(name = "Insuredcity", nullable = true, length = 50)
    public String getInsuredcity() {
        return insuredcity;
    }

    public void setInsuredcity(String insuredcity) {
        this.insuredcity = insuredcity;
    }


    @Basic
    @Column(name = "Insuredcounty", nullable = true, length = 50)
    public String getInsuredcounty() {
        return insuredcounty;
    }

    public void setInsuredcounty(String insuredcounty) {
        this.insuredcounty = insuredcounty;
    }

    @Basic
    @Column(name = "Insuredaddress", nullable = true, length = 200)
    public String getInsuredaddress() {
        return insuredaddress;
    }

    public void setInsuredaddress(String insuredaddress) {
        this.insuredaddress = insuredaddress;
    }

    @Basic
    @Column(name = "Insuredphone", nullable = true, length = 20)
    public String getInsuredphone() {
        return insuredphone;
    }

    public void setInsuredphone(String insuredphone) {
        this.insuredphone = insuredphone;
    }

    @Basic
    @Column(name = "Insuredmailno", nullable = true, length = 10)
    public String getInsuredmailno() {
        return insuredmailno;
    }

    public void setInsuredmailno(String insuredmailno) {
        this.insuredmailno = insuredmailno;
    }

    @Basic
    @Column(name = "Insuredemail", nullable = true, length = 20)
    public String getInsuredemail() {
        return insuredemail;
    }

    public void setInsuredemail(String insuredemail) {
        this.insuredemail = insuredemail;
    }

    @Basic
    @Column(name = "Insuredmerry", nullable = true, length = 20)
    public String getInsuredmerry() {
        return insuredmerry;
    }

    public void setInsuredmerry(String insuredmerry) {
        this.insuredmerry = insuredmerry;
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
    @Column(name = "Handlercode", nullable = true, length = 10)
    public String getHandlercode() {
        return handlercode;
    }

    public void setHandlercode(String handlercode) {
        this.handlercode = handlercode;
    }

    @Basic
    @Column(name = "Handlername", nullable = true, length = 20)
    public String getHandlername() {
        return handlername;
    }

    public void setHandlername(String handlername) {
        this.handlername = handlername;
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
    @Column(name = "Remark", nullable = true, length = 1600)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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
    @Column(name = "CValiDate", nullable = true)
    public Date getcValiDate() {
        return cValiDate;
    }

    public void setcValiDate(Date cValiDate) {
        this.cValiDate = cValiDate;
    }

    @Basic
    @Column(name = "InputOpecode", nullable = true, length = 10)
    public String getInputOpecode() {
        return inputOpecode;
    }

    public void setInputOpecode(String inputOpecode) {
        this.inputOpecode = inputOpecode;
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
    @Column(name = "InputDate", nullable = true)
    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
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
    @Column(name = "ApproveCode", nullable = true, length = 10)
    public String getApproveCode() {
        return approveCode;
    }

    public void setApproveCode(String approveCode) {
        this.approveCode = approveCode;
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
    @Column(name = "ApproveDate", nullable = true, length = 20)
    public String getApproveDate() {
        return approveDate;
    }

    public void setApproveDate(String approveDate) {
        this.approveDate = approveDate;
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
    @Column(name = "UWOperatorcode", nullable = true, length = 10)
    public String getUwOperatorcode() {
        return uwOperatorcode;
    }

    public void setUwOperatorcode(String uwOperatorcode) {
        this.uwOperatorcode = uwOperatorcode;
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
    @Column(name = "UWDate", nullable = true)
    public Date getUwDate() {
        return uwDate;
    }

    public void setUwDate(Date uwDate) {
        this.uwDate = uwDate;
    }

    @Basic
    @Column(name = "payflag", nullable = true, length = 2)
    public String getPayflag() {
        return payflag;
    }

    public void setPayflag(String payflag) {
        this.payflag = payflag;
    }

    @Basic
    @Column(name = "contState", nullable = true, length = 20)
    public String getContState() {
        return contState;
    }

    public void setContState(String contState) {
        this.contState = contState;
    }

    @Basic
    @Column(name = "Address", nullable = true, length = 80)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "ZipCode", nullable = true, length = 6)
    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Basic
    @Column(name = "benefitName", nullable = true, length = 50)
    public String getBenefitName() {
        return benefitName;
    }

    public void setBenefitName(String benefitName) {
        this.benefitName = benefitName;
    }

    @Basic
    @Column(name = "benefitSex", nullable = true, length = 2)
    public String getBenefitSex() {
        return benefitSex;
    }

    public void setBenefitSex(String benefitSex) {
        this.benefitSex = benefitSex;
    }

    @Basic
    @Column(name = "benefitBirthday", nullable = true)
    public Date getBenefitBirthday() {
        return benefitBirthday;
    }

    public void setBenefitBirthday(Date benefitBirthday) {
        this.benefitBirthday = benefitBirthday;
    }

    @Basic
    @Column(name = "benefitIDType", nullable = true, length = 2)
    public String getBenefitIdType() {
        return benefitIdType;
    }

    public void setBenefitIdType(String benefitIdType) {
        this.benefitIdType = benefitIdType;
    }

    @Basic
    @Column(name = "benefitIDNo", nullable = true, length = 20)
    public String getBenefitIdNo() {
        return benefitIdNo;
    }

    public void setBenefitIdNo(String benefitIdNo) {
        this.benefitIdNo = benefitIdNo;
    }

    @Basic
    @Column(name = "benefitaddress", nullable = true, length = 200)
    public String getBenefitaddress() {
        return benefitaddress;
    }

    public void setBenefitaddress(String benefitaddress) {
        this.benefitaddress = benefitaddress;
    }

    @Basic
    @Column(name = "benefitphone", nullable = true, length = 20)
    public String getBenefitphone() {
        return benefitphone;
    }

    public void setBenefitphone(String benefitphone) {
        this.benefitphone = benefitphone;
    }

    @Basic
    @Column(name = "benefitmailno", nullable = true, length = 10)
    public String getBenefitmailno() {
        return benefitmailno;
    }

    public void setBenefitmailno(String benefitmailno) {
        this.benefitmailno = benefitmailno;
    }

    @Basic
    @Column(name = "benefitemail", nullable = true, length = 20)
    public String getBenefitemail() {
        return benefitemail;
    }

    public void setBenefitemail(String benefitemail) {
        this.benefitemail = benefitemail;
    }

    @Basic
    @Column(name = "benefittype", nullable = true, length = 20)
    public String getBenefittype() {
        return benefittype;
    }

    public void setBenefittype(String benefittype) {
        this.benefittype = benefittype;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lccont lccont = (Lccont) o;

        if (contNo != null ? !contNo.equals(lccont.contNo) : lccont.contNo != null) return false;
        if (polNo != null ? !polNo.equals(lccont.polNo) : lccont.polNo != null) return false;
        if (manageCom != null ? !manageCom.equals(lccont.manageCom) : lccont.manageCom != null) return false;
        if (userid != null ? !userid.equals(lccont.userid) : lccont.userid != null) return false;
        if (saleChnl != null ? !saleChnl.equals(lccont.saleChnl) : lccont.saleChnl != null) return false;
        if (appntNo != null ? !appntNo.equals(lccont.appntNo) : lccont.appntNo != null) return false;
        if (appntName != null ? !appntName.equals(lccont.appntName) : lccont.appntName != null) return false;
        if (appntSex != null ? !appntSex.equals(lccont.appntSex) : lccont.appntSex != null) return false;
        if (appntBirthday != null ? !appntBirthday.equals(lccont.appntBirthday) : lccont.appntBirthday != null)
            return false;
        if (appntIdType != null ? !appntIdType.equals(lccont.appntIdType) : lccont.appntIdType != null) return false;
        if (appntIdNo != null ? !appntIdNo.equals(lccont.appntIdNo) : lccont.appntIdNo != null) return false;
        if (appntaddress != null ? !appntaddress.equals(lccont.appntaddress) : lccont.appntaddress != null)
            return false;
        if (appntphone != null ? !appntphone.equals(lccont.appntphone) : lccont.appntphone != null) return false;
        if (appntmailno != null ? !appntmailno.equals(lccont.appntmailno) : lccont.appntmailno != null) return false;
        if (appntemail != null ? !appntemail.equals(lccont.appntemail) : lccont.appntemail != null) return false;
        if (appntmerry != null ? !appntmerry.equals(lccont.appntmerry) : lccont.appntmerry != null) return false;
        if (financemsg != null ? !financemsg.equals(lccont.financemsg) : lccont.financemsg != null) return false;
        if (health != null ? !health.equals(lccont.health) : lccont.health != null) return false;
        if (insuredName != null ? !insuredName.equals(lccont.insuredName) : lccont.insuredName != null) return false;
        if (insuredSex != null ? !insuredSex.equals(lccont.insuredSex) : lccont.insuredSex != null) return false;
        if (insuredBirthday != null ? !insuredBirthday.equals(lccont.insuredBirthday) : lccont.insuredBirthday != null)
            return false;
        if (insuredIdType != null ? !insuredIdType.equals(lccont.insuredIdType) : lccont.insuredIdType != null)
            return false;
        if (insuredIdNo != null ? !insuredIdNo.equals(lccont.insuredIdNo) : lccont.insuredIdNo != null) return false;
        if (insuredwork != null ? !insuredwork.equals(lccont.insuredwork) : lccont.insuredwork != null) return false;
        if (insuredaddress != null ? !insuredaddress.equals(lccont.insuredaddress) : lccont.insuredaddress != null)
            return false;
        if (insuredphone != null ? !insuredphone.equals(lccont.insuredphone) : lccont.insuredphone != null)
            return false;
        if (insuredmailno != null ? !insuredmailno.equals(lccont.insuredmailno) : lccont.insuredmailno != null)
            return false;
        if (insuredemail != null ? !insuredemail.equals(lccont.insuredemail) : lccont.insuredemail != null)
            return false;
        if (insuredmerry != null ? !insuredmerry.equals(lccont.insuredmerry) : lccont.insuredmerry != null)
            return false;
        if (payMode != null ? !payMode.equals(lccont.payMode) : lccont.payMode != null) return false;
        if (handlercode != null ? !handlercode.equals(lccont.handlercode) : lccont.handlercode != null) return false;
        if (handlername != null ? !handlername.equals(lccont.handlername) : lccont.handlername != null) return false;
        if (signCom != null ? !signCom.equals(lccont.signCom) : lccont.signCom != null) return false;
        if (signDate != null ? !signDate.equals(lccont.signDate) : lccont.signDate != null) return false;
        if (remark != null ? !remark.equals(lccont.remark) : lccont.remark != null) return false;
        if (prem != null ? !prem.equals(lccont.prem) : lccont.prem != null) return false;
        if (amnt != null ? !amnt.equals(lccont.amnt) : lccont.amnt != null) return false;
        if (cValiDate != null ? !cValiDate.equals(lccont.cValiDate) : lccont.cValiDate != null) return false;
        if (inputOpecode != null ? !inputOpecode.equals(lccont.inputOpecode) : lccont.inputOpecode != null)
            return false;
        if (inputOperator != null ? !inputOperator.equals(lccont.inputOperator) : lccont.inputOperator != null)
            return false;
        if (inputDate != null ? !inputDate.equals(lccont.inputDate) : lccont.inputDate != null) return false;
        if (approveFlag != null ? !approveFlag.equals(lccont.approveFlag) : lccont.approveFlag != null) return false;
        if (approveCode != null ? !approveCode.equals(lccont.approveCode) : lccont.approveCode != null) return false;
        if (approvename != null ? !approvename.equals(lccont.approvename) : lccont.approvename != null) return false;
        if (approveDate != null ? !approveDate.equals(lccont.approveDate) : lccont.approveDate != null) return false;
        if (uwFlag != null ? !uwFlag.equals(lccont.uwFlag) : lccont.uwFlag != null) return false;
        if (uwOperatorcode != null ? !uwOperatorcode.equals(lccont.uwOperatorcode) : lccont.uwOperatorcode != null)
            return false;
        if (uwOperator != null ? !uwOperator.equals(lccont.uwOperator) : lccont.uwOperator != null) return false;
        if (uwDate != null ? !uwDate.equals(lccont.uwDate) : lccont.uwDate != null) return false;
        if (payflag != null ? !payflag.equals(lccont.payflag) : lccont.payflag != null) return false;
        if (contState != null ? !contState.equals(lccont.contState) : lccont.contState != null) return false;
        if (address != null ? !address.equals(lccont.address) : lccont.address != null) return false;
        if (zipCode != null ? !zipCode.equals(lccont.zipCode) : lccont.zipCode != null) return false;
        if (benefitName != null ? !benefitName.equals(lccont.benefitName) : lccont.benefitName != null) return false;
        if (benefitSex != null ? !benefitSex.equals(lccont.benefitSex) : lccont.benefitSex != null) return false;
        if (benefitBirthday != null ? !benefitBirthday.equals(lccont.benefitBirthday) : lccont.benefitBirthday != null)
            return false;
        if (benefitIdType != null ? !benefitIdType.equals(lccont.benefitIdType) : lccont.benefitIdType != null)
            return false;
        if (benefitIdNo != null ? !benefitIdNo.equals(lccont.benefitIdNo) : lccont.benefitIdNo != null) return false;
        if (benefitaddress != null ? !benefitaddress.equals(lccont.benefitaddress) : lccont.benefitaddress != null)
            return false;
        if (benefitphone != null ? !benefitphone.equals(lccont.benefitphone) : lccont.benefitphone != null)
            return false;
        if (benefitmailno != null ? !benefitmailno.equals(lccont.benefitmailno) : lccont.benefitmailno != null)
            return false;
        if (benefitemail != null ? !benefitemail.equals(lccont.benefitemail) : lccont.benefitemail != null)
            return false;
        if (benefittype != null ? !benefittype.equals(lccont.benefittype) : lccont.benefittype != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = contNo != null ? contNo.hashCode() : 0;
        result = 31 * result + (polNo != null ? polNo.hashCode() : 0);
        result = 31 * result + (manageCom != null ? manageCom.hashCode() : 0);
        result = 31 * result + (userid != null ? userid.hashCode() : 0);
        result = 31 * result + (saleChnl != null ? saleChnl.hashCode() : 0);
        result = 31 * result + (appntNo != null ? appntNo.hashCode() : 0);
        result = 31 * result + (appntName != null ? appntName.hashCode() : 0);
        result = 31 * result + (appntSex != null ? appntSex.hashCode() : 0);
        result = 31 * result + (appntBirthday != null ? appntBirthday.hashCode() : 0);
        result = 31 * result + (appntIdType != null ? appntIdType.hashCode() : 0);
        result = 31 * result + (appntIdNo != null ? appntIdNo.hashCode() : 0);
        result = 31 * result + (appntaddress != null ? appntaddress.hashCode() : 0);
        result = 31 * result + (appntphone != null ? appntphone.hashCode() : 0);
        result = 31 * result + (appntmailno != null ? appntmailno.hashCode() : 0);
        result = 31 * result + (appntemail != null ? appntemail.hashCode() : 0);
        result = 31 * result + (appntmerry != null ? appntmerry.hashCode() : 0);
        result = 31 * result + (financemsg != null ? financemsg.hashCode() : 0);
        result = 31 * result + (health != null ? health.hashCode() : 0);
        result = 31 * result + (insuredName != null ? insuredName.hashCode() : 0);
        result = 31 * result + (insuredSex != null ? insuredSex.hashCode() : 0);
        result = 31 * result + (insuredBirthday != null ? insuredBirthday.hashCode() : 0);
        result = 31 * result + (insuredIdType != null ? insuredIdType.hashCode() : 0);
        result = 31 * result + (insuredIdNo != null ? insuredIdNo.hashCode() : 0);
        result = 31 * result + (insuredwork != null ? insuredwork.hashCode() : 0);
        result = 31 * result + (insuredaddress != null ? insuredaddress.hashCode() : 0);
        result = 31 * result + (insuredphone != null ? insuredphone.hashCode() : 0);
        result = 31 * result + (insuredmailno != null ? insuredmailno.hashCode() : 0);
        result = 31 * result + (insuredemail != null ? insuredemail.hashCode() : 0);
        result = 31 * result + (insuredmerry != null ? insuredmerry.hashCode() : 0);
        result = 31 * result + (payMode != null ? payMode.hashCode() : 0);
        result = 31 * result + (handlercode != null ? handlercode.hashCode() : 0);
        result = 31 * result + (handlername != null ? handlername.hashCode() : 0);
        result = 31 * result + (signCom != null ? signCom.hashCode() : 0);
        result = 31 * result + (signDate != null ? signDate.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (prem != null ? prem.hashCode() : 0);
        result = 31 * result + (amnt != null ? amnt.hashCode() : 0);
        result = 31 * result + (cValiDate != null ? cValiDate.hashCode() : 0);
        result = 31 * result + (inputOpecode != null ? inputOpecode.hashCode() : 0);
        result = 31 * result + (inputOperator != null ? inputOperator.hashCode() : 0);
        result = 31 * result + (inputDate != null ? inputDate.hashCode() : 0);
        result = 31 * result + (approveFlag != null ? approveFlag.hashCode() : 0);
        result = 31 * result + (approveCode != null ? approveCode.hashCode() : 0);
        result = 31 * result + (approvename != null ? approvename.hashCode() : 0);
        result = 31 * result + (approveDate != null ? approveDate.hashCode() : 0);
        result = 31 * result + (uwFlag != null ? uwFlag.hashCode() : 0);
        result = 31 * result + (uwOperatorcode != null ? uwOperatorcode.hashCode() : 0);
        result = 31 * result + (uwOperator != null ? uwOperator.hashCode() : 0);
        result = 31 * result + (uwDate != null ? uwDate.hashCode() : 0);
        result = 31 * result + (payflag != null ? payflag.hashCode() : 0);
        result = 31 * result + (contState != null ? contState.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (zipCode != null ? zipCode.hashCode() : 0);
        result = 31 * result + (benefitName != null ? benefitName.hashCode() : 0);
        result = 31 * result + (benefitSex != null ? benefitSex.hashCode() : 0);
        result = 31 * result + (benefitBirthday != null ? benefitBirthday.hashCode() : 0);
        result = 31 * result + (benefitIdType != null ? benefitIdType.hashCode() : 0);
        result = 31 * result + (benefitIdNo != null ? benefitIdNo.hashCode() : 0);
        result = 31 * result + (benefitaddress != null ? benefitaddress.hashCode() : 0);
        result = 31 * result + (benefitphone != null ? benefitphone.hashCode() : 0);
        result = 31 * result + (benefitmailno != null ? benefitmailno.hashCode() : 0);
        result = 31 * result + (benefitemail != null ? benefitemail.hashCode() : 0);
        result = 31 * result + (benefittype != null ? benefittype.hashCode() : 0);
        return result;
    }
}
