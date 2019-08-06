package com.koali.pojo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-29-2019/5/29-15:46
 */
@Entity
public class Lcgrpmeet {
    private int grpmid;
    private String grpuid;
    private String uname;
    private String lpname;
    private String compname;
    private String comcode;
    private String grpPolNo;
    private Date meetdate;
    private String email;
    private String phone;
    private String detail;
    private String grpmeetstate;

    @Id
    @Column(name = "grpmid", nullable = false)
    public int getGrpmid() {
        return grpmid;
    }

    public void setGrpmid(int grpmid) {
        this.grpmid = grpmid;
    }

    @Basic
    @Column(name = "grpuid", nullable = false, length = 30)
    public String getGrpuid() {
        return grpuid;
    }

    public void setGrpuid(String grpuid) {
        this.grpuid = grpuid;
    }

    @Basic
    @Column(name = "uname", nullable = true, length = 50)
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    @Basic
    @Column(name = "Lpname", nullable = true, length = 30)
    public String getLpname() {
        return lpname;
    }

    public void setLpname(String lpname) {
        this.lpname = lpname;
    }

    @Basic
    @Column(name = "compname", nullable = true, length = 30)
    public String getCompname() {
        return compname;
    }

    public void setCompname(String compname) {
        this.compname = compname;
    }

    @Basic
    @Column(name = "comcode", nullable = true, length = 10)
    public String getComcode() {
        return comcode;
    }

    public void setComcode(String comcode) {
        this.comcode = comcode;
    }

    @Basic
    @Column(name = "grpPolNo", nullable = true, length = 20)
    public String getGrpPolNo() {
        return grpPolNo;
    }

    public void setGrpPolNo(String grpPolNo) {
        this.grpPolNo = grpPolNo;
    }

    @Basic
    @Column(name = "meetdate", nullable = true)
    public Date getMeetdate() {
        return meetdate;
    }

    public void setMeetdate(Date meetdate) {
        this.meetdate = meetdate;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 50)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 15)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "detail", nullable = true, length = 200)
    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Basic
    @Column(name = "grpmeetstate", nullable = true, length = 20)
    public String getGrpmeetstate() {
        return grpmeetstate;
    }

    public void setGrpmeetstate(String grpmeetstate) {
        this.grpmeetstate = grpmeetstate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lcgrpmeet lcgrpmeet = (Lcgrpmeet) o;

        if (grpmid != lcgrpmeet.grpmid) return false;
        if (grpuid != null ? !grpuid.equals(lcgrpmeet.grpuid) : lcgrpmeet.grpuid != null) return false;
        if (uname != null ? !uname.equals(lcgrpmeet.uname) : lcgrpmeet.uname != null) return false;
        if (lpname != null ? !lpname.equals(lcgrpmeet.lpname) : lcgrpmeet.lpname != null) return false;
        if (compname != null ? !compname.equals(lcgrpmeet.compname) : lcgrpmeet.compname != null) return false;
        if (comcode != null ? !comcode.equals(lcgrpmeet.comcode) : lcgrpmeet.comcode != null) return false;
        if (grpPolNo != null ? !grpPolNo.equals(lcgrpmeet.grpPolNo) : lcgrpmeet.grpPolNo != null) return false;
        if (meetdate != null ? !meetdate.equals(lcgrpmeet.meetdate) : lcgrpmeet.meetdate != null) return false;
        if (email != null ? !email.equals(lcgrpmeet.email) : lcgrpmeet.email != null) return false;
        if (phone != null ? !phone.equals(lcgrpmeet.phone) : lcgrpmeet.phone != null) return false;
        if (detail != null ? !detail.equals(lcgrpmeet.detail) : lcgrpmeet.detail != null) return false;
        if (grpmeetstate != null ? !grpmeetstate.equals(lcgrpmeet.grpmeetstate) : lcgrpmeet.grpmeetstate != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = grpmid;
        result = 31 * result + (grpuid != null ? grpuid.hashCode() : 0);
        result = 31 * result + (uname != null ? uname.hashCode() : 0);
        result = 31 * result + (lpname != null ? lpname.hashCode() : 0);
        result = 31 * result + (compname != null ? compname.hashCode() : 0);
        result = 31 * result + (comcode != null ? comcode.hashCode() : 0);
        result = 31 * result + (grpPolNo != null ? grpPolNo.hashCode() : 0);
        result = 31 * result + (meetdate != null ? meetdate.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (detail != null ? detail.hashCode() : 0);
        result = 31 * result + (grpmeetstate != null ? grpmeetstate.hashCode() : 0);
        return result;
    }
}
