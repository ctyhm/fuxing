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
public class Admin {
    private String sid;
    private String pwd;
    private String comcode;
    private String comname;
    private String sname;
    private Integer sage;
    private String ssex;
    private String posi;
    private String adminlimit;
    private Date startdate;
    private Date enddate;
    private String adminstate;
    private String semail;
    private String sphone;
    private String address;

    @Id
    @Column(name = "sid", nullable = false, length = 10)
    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    @Basic
    @Column(name = "pwd", nullable = true, length = 10)
    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
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
    @Column(name = "comname", nullable = true, length = 30)
    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname;
    }

    @Basic
    @Column(name = "sname", nullable = true, length = 20)
    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    @Basic
    @Column(name = "sage", nullable = true)
    public Integer getSage() {
        return sage;
    }

    public void setSage(Integer sage) {
        this.sage = sage;
    }

    @Basic
    @Column(name = "ssex", nullable = true, length = 2)
    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    @Basic
    @Column(name = "posi", nullable = true, length = 20)
    public String getPosi() {
        return posi;
    }

    public void setPosi(String posi) {
        this.posi = posi;
    }

    @Basic
    @Column(name = "adminlimit", nullable = true, length = 2)
    public String getAdminlimit() {
        return adminlimit;
    }

    public void setAdminlimit(String adminlimit) {
        this.adminlimit = adminlimit;
    }

    @Basic
    @Column(name = "startdate", nullable = true)
    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    @Basic
    @Column(name = "enddate", nullable = true)
    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    @Basic
    @Column(name = "adminstate", nullable = true, length = 20)
    public String getAdminstate() {
        return adminstate;
    }

    public void setAdminstate(String adminstate) {
        this.adminstate = adminstate;
    }

    @Basic
    @Column(name = "semail", nullable = true, length = 30)
    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    @Basic
    @Column(name = "sphone", nullable = true, length = 15)
    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 100)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Admin admin = (Admin) o;

        if (sid != null ? !sid.equals(admin.sid) : admin.sid != null) return false;
        if (pwd != null ? !pwd.equals(admin.pwd) : admin.pwd != null) return false;
        if (comcode != null ? !comcode.equals(admin.comcode) : admin.comcode != null) return false;
        if (comname != null ? !comname.equals(admin.comname) : admin.comname != null) return false;
        if (sname != null ? !sname.equals(admin.sname) : admin.sname != null) return false;
        if (sage != null ? !sage.equals(admin.sage) : admin.sage != null) return false;
        if (ssex != null ? !ssex.equals(admin.ssex) : admin.ssex != null) return false;
        if (posi != null ? !posi.equals(admin.posi) : admin.posi != null) return false;
        if (adminlimit != null ? !adminlimit.equals(admin.adminlimit) : admin.adminlimit != null) return false;
        if (startdate != null ? !startdate.equals(admin.startdate) : admin.startdate != null) return false;
        if (enddate != null ? !enddate.equals(admin.enddate) : admin.enddate != null) return false;
        if (adminstate != null ? !adminstate.equals(admin.adminstate) : admin.adminstate != null) return false;
        if (semail != null ? !semail.equals(admin.semail) : admin.semail != null) return false;
        if (sphone != null ? !sphone.equals(admin.sphone) : admin.sphone != null) return false;
        if (address != null ? !address.equals(admin.address) : admin.address != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = sid != null ? sid.hashCode() : 0;
        result = 31 * result + (pwd != null ? pwd.hashCode() : 0);
        result = 31 * result + (comcode != null ? comcode.hashCode() : 0);
        result = 31 * result + (comname != null ? comname.hashCode() : 0);
        result = 31 * result + (sname != null ? sname.hashCode() : 0);
        result = 31 * result + (sage != null ? sage.hashCode() : 0);
        result = 31 * result + (ssex != null ? ssex.hashCode() : 0);
        result = 31 * result + (posi != null ? posi.hashCode() : 0);
        result = 31 * result + (adminlimit != null ? adminlimit.hashCode() : 0);
        result = 31 * result + (startdate != null ? startdate.hashCode() : 0);
        result = 31 * result + (enddate != null ? enddate.hashCode() : 0);
        result = 31 * result + (adminstate != null ? adminstate.hashCode() : 0);
        result = 31 * result + (semail != null ? semail.hashCode() : 0);
        result = 31 * result + (sphone != null ? sphone.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        return result;
    }
}
