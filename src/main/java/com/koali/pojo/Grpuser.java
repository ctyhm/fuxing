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
public class Grpuser {
    private String grpuid;
    private String uname;
    private String address;
    private String grptype;
    private String password;
    private String email;
    private String phone;
    private Date makedate;
    private String grputype;
    private String grpustate;

    @Id
    @Column(name = "grpuid", nullable = false, length = 30)
    public String getGrpuid() {
        return grpuid;
    }

    public void setGrpuid(String grpuid) {
        this.grpuid = grpuid;
    }

    @Basic
    @Column(name = "uname", nullable = true, length = 200)
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 200)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "grptype", nullable = true, length = 50)
    public String getGrptype() {
        return grptype;
    }

    public void setGrptype(String grptype) {
        this.grptype = grptype;
    }

    @Basic
    @Column(name = "password", nullable = true, length = 50)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
    @Column(name = "makedate", nullable = true)
    public Date getMakedate() {
        return makedate;
    }

    public void setMakedate(Date makedate) {
        this.makedate = makedate;
    }

    @Basic
    @Column(name = "grputype", nullable = true, length = 8)
    public String getGrputype() {
        return grputype;
    }

    public void setGrputype(String grputype) {
        this.grputype = grputype;
    }

    @Basic
    @Column(name = "grpustate", nullable = true, length = 10)
    public String getGrpustate() {
        return grpustate;
    }

    public void setGrpustate(String grpustate) {
        this.grpustate = grpustate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Grpuser grpuser = (Grpuser) o;

        if (grpuid != null ? !grpuid.equals(grpuser.grpuid) : grpuser.grpuid != null) return false;
        if (uname != null ? !uname.equals(grpuser.uname) : grpuser.uname != null) return false;
        if (address != null ? !address.equals(grpuser.address) : grpuser.address != null) return false;
        if (grptype != null ? !grptype.equals(grpuser.grptype) : grpuser.grptype != null) return false;
        if (password != null ? !password.equals(grpuser.password) : grpuser.password != null) return false;
        if (email != null ? !email.equals(grpuser.email) : grpuser.email != null) return false;
        if (phone != null ? !phone.equals(grpuser.phone) : grpuser.phone != null) return false;
        if (makedate != null ? !makedate.equals(grpuser.makedate) : grpuser.makedate != null) return false;
        if (grputype != null ? !grputype.equals(grpuser.grputype) : grpuser.grputype != null) return false;
        if (grpustate != null ? !grpustate.equals(grpuser.grpustate) : grpuser.grpustate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = grpuid != null ? grpuid.hashCode() : 0;
        result = 31 * result + (uname != null ? uname.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (grptype != null ? grptype.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (makedate != null ? makedate.hashCode() : 0);
        result = 31 * result + (grputype != null ? grputype.hashCode() : 0);
        result = 31 * result + (grpustate != null ? grpustate.hashCode() : 0);
        return result;
    }
}
