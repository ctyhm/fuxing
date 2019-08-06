package com.koali.dao.Impl;

import com.koali.dao.LCGrpContDao;
import com.koali.pojo.Lcgrpcont;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:53
 */
@Transactional
public class LCGrpContDaoImpl extends HibernateDaoSupport implements LCGrpContDao {
    @Override
    public void save(Lcgrpcont lcgrpcont) {
        this.getHibernateTemplate().save(lcgrpcont);
    }

    @Override
    public Lcgrpcont findById(String lcgrpcontid) {
        return this.getHibernateTemplate().get(Lcgrpcont.class,lcgrpcontid);
    }

    @Override
    public void update(Lcgrpcont lcgrpcont) {
        this.getHibernateTemplate().update(lcgrpcont);
    }

    @Override
    public void delete(Lcgrpcont lcgrpcont) {
        this.getHibernateTemplate().delete(lcgrpcont);
    }

    @Override
    public List<Lcgrpcont> findByCom(String comcode, String remark) {
        Lcgrpcont lcgrpcont=new Lcgrpcont();
        lcgrpcont.setRemark(remark);
        lcgrpcont.setManageCom(comcode);
        return this.getHibernateTemplate().findByExample(lcgrpcont);
    }
}
