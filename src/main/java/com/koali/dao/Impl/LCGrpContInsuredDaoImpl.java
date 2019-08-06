package com.koali.dao.Impl;

import com.koali.dao.LCGrpContInsuredDao;
import com.koali.pojo.Lcgrpinsured;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:55
 */
@Transactional
public class LCGrpContInsuredDaoImpl extends HibernateDaoSupport implements LCGrpContInsuredDao {
    @Override
    public void save(Lcgrpinsured lcgrpinsured) {
        this.getHibernateTemplate().save(lcgrpinsured);
    }

    @Override
    public Lcgrpinsured findById(Integer lcgrpinsuredid) {
        return this.getHibernateTemplate().get(Lcgrpinsured.class,lcgrpinsuredid);
    }

    @Override
    public void update(Lcgrpinsured lcgrpinsured) {
        this.getHibernateTemplate().update(lcgrpinsured);
    }

    @Override
    public void delete(Lcgrpinsured lcgrpinsured) {
        this.getHibernateTemplate().delete(lcgrpinsured);
    }

    @Override
    public List<Lcgrpinsured> findBygrpContNo(String grpContNo) {
        Lcgrpinsured grpinsured=new Lcgrpinsured();
        grpinsured.setGrpContNo(grpContNo);
        List<Lcgrpinsured> list =  this.getHibernateTemplate().findByExample(grpinsured);
        return list;
    }

    @Override
    public int findcount(String grpContNo) {
        String hql = "select count(*) from Lcgrpinsured where grpContNo= ?";
        List<?> list = this.getHibernateTemplate().find(hql,grpContNo);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

}
