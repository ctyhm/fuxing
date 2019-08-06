package com.koali.dao.Impl;

import com.koali.dao.LCPolDao;
import com.koali.pojo.Lcpol;
import com.koali.pojo.Ldcom;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:01
 */
@Transactional
public class LCPolDaoImpl extends HibernateDaoSupport implements LCPolDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from Lcpol";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Lcpol> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Lcpol.class);
        List<Lcpol> pollist = (List<Lcpol>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return pollist;
    }

    @Override
    public void save(Lcpol lcpol) {
        this.getHibernateTemplate().save(lcpol);
    }

    @Override
    public Lcpol findById(String lcpolid) {
        return this.getHibernateTemplate().get(Lcpol.class, lcpolid);
    }

    @Override
    public void update(Lcpol lcpol) {
        this.getHibernateTemplate().update(lcpol);
    }

    @Override
    public void delete(Lcpol lcpol) {
        this.getHibernateTemplate().delete(lcpol);
    }

    @Override
    public List<Lcpol> find() {
        List<Lcpol> comlist = this.getHibernateTemplate().loadAll(Lcpol.class);
        return comlist;
    }
}
