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
public class Lcmeet {
    private int meetid;
    private String userid;
    private String uname;
    private String lpname;
    private String linsuredname;
    private String comcode;
    private String polNo;
    private Date meetdate;
    private String email;
    private String phone;
    private String detail;
    private String meetstate;

    @Id
    @Column(name = "meetid", nullable = false)
    public int getMeetid() {
        return meetid;
    }

    public void setMeetid(int meetid) {
        this.meetid = meetid;
    }

    @Basic
    @Column(name = "userid", nullable = false, length = 30)
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
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
    @Column(name = "Linsuredname", nullable = true, length = 30)
    public String getLinsuredname() {
        return linsuredname;
    }

    public void setLinsuredname(String linsuredname) {
        this.linsuredname = linsuredname;
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
    @Column(name = "PolNo", nullable = true, length = 20)
    public String getPolNo() {
        return polNo;
    }

    public void setPolNo(String polNo) {
        this.polNo = polNo;
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
    @Column(name = "meetstate", nullable = true, length = 20)
    public String getMeetstate() {
        return meetstate;
    }

    public void setMeetstate(String meetstate) {
        this.meetstate = meetstate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lcmeet lcmeet = (Lcmeet) o;

        if (meetid != lcmeet.meetid) return false;
        if (userid != null ? !userid.equals(lcmeet.userid) : lcmeet.userid != null) return false;
        if (uname != null ? !uname.equals(lcmeet.uname) : lcmeet.uname != null) return false;
        if (lpname != null ? !lpname.equals(lcmeet.lpname) : lcmeet.lpname != null) return false;
        if (linsuredname != null ? !linsuredname.equals(lcmeet.linsuredname) : lcmeet.linsuredname != null)
            return false;
        if (comcode != null ? !comcode.equals(lcmeet.comcode) : lcmeet.comcode != null) return false;
        if (polNo != null ? !polNo.equals(lcmeet.polNo) : lcmeet.polNo != null) return false;
        if (meetdate != null ? !meetdate.equals(lcmeet.meetdate) : lcmeet.meetdate != null) return false;
        if (email != null ? !email.equals(lcmeet.email) : lcmeet.email != null) return false;
        if (phone != null ? !phone.equals(lcmeet.phone) : lcmeet.phone != null) return false;
        if (detail != null ? !detail.equals(lcmeet.detail) : lcmeet.detail != null) return false;
        if (meetstate != null ? !meetstate.equals(lcmeet.meetstate) : lcmeet.meetstate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = meetid;
        result = 31 * result + (userid != null ? userid.hashCode() : 0);
        result = 31 * result + (uname != null ? uname.hashCode() : 0);
        result = 31 * result + (lpname != null ? lpname.hashCode() : 0);
        result = 31 * result + (linsuredname != null ? linsuredname.hashCode() : 0);
        result = 31 * result + (comcode != null ? comcode.hashCode() : 0);
        result = 31 * result + (polNo != null ? polNo.hashCode() : 0);
        result = 31 * result + (meetdate != null ? meetdate.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (detail != null ? detail.hashCode() : 0);
        result = 31 * result + (meetstate != null ? meetstate.hashCode() : 0);
        return result;
    }
}
