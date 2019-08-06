package com.koali.dao.Impl;

import com.koali.dao.LCGrpPolDao;
import com.koali.pojo.Lcgrpmeet;
import com.koali.pojo.Lcgrppol;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:58
 */
@Transactional
public class LCGrpPolDaoImpl extends HibernateDaoSupport implements LCGrpPolDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from Lcgrppol";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Lcgrppol> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Lcgrppol.class);
        List<Lcgrppol> grppollist = (List<Lcgrppol>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return grppollist;
    }

    @Override
    public void save(Lcgrppol lcgrppol) {
        this.getHibernateTemplate().save(lcgrppol);
    }

    @Override
    public Lcgrppol findById(String lcgrppolid) {
        return this.getHibernateTemplate().get(Lcgrppol.class, lcgrppolid);
    }

    @Override
    public void update(Lcgrppol lcgrppol) {
        this.getHibernateTemplate().update(lcgrppol);
    }

    @Override
    public void delete(Lcgrppol lcgrppol) {
        this.getHibernateTemplate().delete(lcgrppol);
    }

    @Override
    public List<Lcgrppol> find() {
        List<Lcgrppol> grppollist=this.getHibernateTemplate().loadAll(Lcgrppol.class);
        return grppollist;
    }
}
