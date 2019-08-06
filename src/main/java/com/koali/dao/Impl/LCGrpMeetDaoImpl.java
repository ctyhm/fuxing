package com.koali.dao.Impl;

import com.koali.dao.LCGrpMeetDao;
import com.koali.pojo.Lcgrpmeet;
import com.koali.pojo.Lcmeet;
import com.koali.pojo.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:57
 */
@Transactional
public class LCGrpMeetDaoImpl extends HibernateDaoSupport implements LCGrpMeetDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from Lcgrpmeet";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Lcgrpmeet> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Lcgrpmeet.class);
        List<Lcgrpmeet> list = (List<Lcgrpmeet>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return list;
    }

    @Override
    public void save(Lcgrpmeet lcgrpmeet) {
        this.getHibernateTemplate().save(lcgrpmeet);
    }

    @Override
    public Lcgrpmeet findById(Integer lcgrpmeetid) {
        return this.getHibernateTemplate().get(Lcgrpmeet.class,lcgrpmeetid);
    }

    @Override
    public void update(Lcgrpmeet lcgrpmeet) {
        this.getHibernateTemplate().update(lcgrpmeet);
    }

    @Override
    public void delete(Lcgrpmeet lcgrpmeet) {
        this.getHibernateTemplate().delete(lcgrpmeet);
    }

    @Override
    public List<Lcgrpmeet> findByCom(String comcode) {
        Lcgrpmeet lcgrpmeet=new Lcgrpmeet();
        lcgrpmeet.setComcode(comcode);
        return this.getHibernateTemplate().findByExample(lcgrpmeet);
    }
}
