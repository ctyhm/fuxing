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
public class Salesman {
    private String sid;
    private String pwd;
    private String comcode;
    private String comname;
    private String sname;
    private Integer sage;
    private String ssex;
    private String posi;
    private String smanlimit;
    private Date startdate;
    private Date enddate;
    private String smanstate;
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
    @Column(name = "smanlimit", nullable = true, length = 2)
    public String getSmanlimit() {
        return smanlimit;
    }

    public void setSmanlimit(String smanlimit) {
        this.smanlimit = smanlimit;
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
    @Column(name = "smanstate", nullable = true, length = 20)
    public String getSmanstate() {
        return smanstate;
    }

    public void setSmanstate(String smanstate) {
        this.smanstate = smanstate;
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

        Salesman salesman = (Salesman) o;

        if (sid != null ? !sid.equals(salesman.sid) : salesman.sid != null) return false;
        if (pwd != null ? !pwd.equals(salesman.pwd) : salesman.pwd != null) return false;
        if (comcode != null ? !comcode.equals(salesman.comcode) : salesman.comcode != null) return false;
        if (comname != null ? !comname.equals(salesman.comname) : salesman.comname != null) return false;
        if (sname != null ? !sname.equals(salesman.sname) : salesman.sname != null) return false;
        if (sage != null ? !sage.equals(salesman.sage) : salesman.sage != null) return false;
        if (ssex != null ? !ssex.equals(salesman.ssex) : salesman.ssex != null) return false;
        if (posi != null ? !posi.equals(salesman.posi) : salesman.posi != null) return false;
        if (smanlimit != null ? !smanlimit.equals(salesman.smanlimit) : salesman.smanlimit != null) return false;
        if (startdate != null ? !startdate.equals(salesman.startdate) : salesman.startdate != null) return false;
        if (enddate != null ? !enddate.equals(salesman.enddate) : salesman.enddate != null) return false;
        if (smanstate != null ? !smanstate.equals(salesman.smanstate) : salesman.smanstate != null) return false;
        if (semail != null ? !semail.equals(salesman.semail) : salesman.semail != null) return false;
        if (sphone != null ? !sphone.equals(salesman.sphone) : salesman.sphone != null) return false;
        if (address != null ? !address.equals(salesman.address) : salesman.address != null) return false;

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
        result = 31 * result + (smanlimit != null ? smanlimit.hashCode() : 0);
        result = 31 * result + (startdate != null ? startdate.hashCode() : 0);
        result = 31 * result + (enddate != null ? enddate.hashCode() : 0);
        result = 31 * result + (smanstate != null ? smanstate.hashCode() : 0);
        result = 31 * result + (semail != null ? semail.hashCode() : 0);
        result = 31 * result + (sphone != null ? sphone.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        return result;
    }
}
