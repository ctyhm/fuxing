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
public class Ldcom {
    private String comCode;
    private String comName;
    private String comaddress;
    private String comprovince;
    private String comcity;
    private String comperator;
    private Date makeDate;

    @Id
    @Column(name = "ComCode", nullable = false, length = 10)
    public String getComCode() {
        return comCode;
    }

    public void setComCode(String comCode) {
        this.comCode = comCode;
    }

    @Basic
    @Column(name = "ComName", nullable = true, length = 30)
    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    @Basic
    @Column(name = "Comaddress", nullable = true, length = 100)
    public String getComaddress() {
        return comaddress;
    }

    public void setComaddress(String comaddress) {
        this.comaddress = comaddress;
    }

    @Basic
    @Column(name = "Comprovince", nullable = true, length = 10)
    public String getComprovince() {
        return comprovince;
    }

    public void setComprovince(String comprovince) {
        this.comprovince = comprovince;
    }

    @Basic
    @Column(name = "Comcity", nullable = true, length = 10)
    public String getComcity() {
        return comcity;
    }

    public void setComcity(String comcity) {
        this.comcity = comcity;
    }

    @Basic
    @Column(name = "comperator", nullable = true, length = 60)
    public String getComperator() {
        return comperator;
    }

    public void setComperator(String comperator) {
        this.comperator = comperator;
    }

    @Basic
    @Column(name = "MakeDate", nullable = true)
    public Date getMakeDate() {
        return makeDate;
    }

    public void setMakeDate(Date makeDate) {
        this.makeDate = makeDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ldcom ldcom = (Ldcom) o;

        if (comCode != null ? !comCode.equals(ldcom.comCode) : ldcom.comCode != null) return false;
        if (comName != null ? !comName.equals(ldcom.comName) : ldcom.comName != null) return false;
        if (comaddress != null ? !comaddress.equals(ldcom.comaddress) : ldcom.comaddress != null) return false;
        if (comprovince != null ? !comprovince.equals(ldcom.comprovince) : ldcom.comprovince != null) return false;
        if (comcity != null ? !comcity.equals(ldcom.comcity) : ldcom.comcity != null) return false;
        if (comperator != null ? !comperator.equals(ldcom.comperator) : ldcom.comperator != null) return false;
        if (makeDate != null ? !makeDate.equals(ldcom.makeDate) : ldcom.makeDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = comCode != null ? comCode.hashCode() : 0;
        result = 31 * result + (comName != null ? comName.hashCode() : 0);
        result = 31 * result + (comaddress != null ? comaddress.hashCode() : 0);
        result = 31 * result + (comprovince != null ? comprovince.hashCode() : 0);
        result = 31 * result + (comcity != null ? comcity.hashCode() : 0);
        result = 31 * result + (comperator != null ? comperator.hashCode() : 0);
        result = 31 * result + (makeDate != null ? makeDate.hashCode() : 0);
        return result;
    }
}
