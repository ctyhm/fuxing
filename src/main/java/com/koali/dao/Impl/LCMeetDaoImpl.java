package com.koali.dao.Impl;

import com.koali.dao.LCMeetDao;
import com.koali.pojo.Lcmeet;
import com.koali.pojo.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:00
 */
@Transactional
public class LCMeetDaoImpl extends HibernateDaoSupport implements LCMeetDao {
    /*@Override
    public int findCount() {
        String hql = "select count(*) from Lcmeet";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Lcmeet> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Lcmeet.class);
        List<Lcmeet> list = (List<Lcmeet>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return list;
    }*/

    @Override
    public void save(Lcmeet lcmeet) {
        this.getHibernateTemplate().save(lcmeet);
    }

    @Override
    public Lcmeet findById(Integer lcmeetid) {
        return this.getHibernateTemplate().get(Lcmeet.class,lcmeetid);
    }

    @Override
    public void update(Lcmeet lcmeet) {
        this.getHibernateTemplate().update(lcmeet);
    }

    @Override
    public void delete(Lcmeet lcmeet) {
        this.getHibernateTemplate().delete(lcmeet);
    }

    @Override
    public List<Lcmeet> findByCom(String comcode) {
        Lcmeet lcmeet=new Lcmeet();
        lcmeet.setComcode(comcode);
        return this.getHibernateTemplate().findByExample(lcmeet);
    }
}
