package com.koali.dao.Impl;

import com.koali.dao.LDComDao;
import com.koali.pojo.Ldcom;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:02
 */
@Transactional
public class LDComDaoImpl extends HibernateDaoSupport implements LDComDao {
    //HttpServletRequest request= ServletActionContext.getRequest();
    //HttpSession session=request.getSession();
    @Override
    public int findCount() {
        String hql = "select count(*) from Ldcom";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Ldcom> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Ldcom.class);
        List<Ldcom> comlist = (List<Ldcom>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return comlist;
    }

    @Override
    public void save(Ldcom ldcom) {
        this.getHibernateTemplate().save(ldcom);
    }

    @Override
    public Ldcom findById(String ldcomid) {
        return this.getHibernateTemplate().get(Ldcom.class, ldcomid);
    }

    @Override
    public void update(Ldcom ldcom) {
        this.getHibernateTemplate().update(ldcom);
    }

    @Override
    public void delete(Ldcom ldcom) {
        this.getHibernateTemplate().delete(ldcom);
    }

    @Override
    public List<Ldcom> find() {
        //String hql = "select comName from Ldcom";
        List<Ldcom> comlist = this.getHibernateTemplate().loadAll(Ldcom.class);
        return comlist;
    }
}
