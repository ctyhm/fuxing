package com.koali.dao.Impl;

import com.koali.dao.SalesManDao;
import com.koali.pojo.Salesman;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:05
 */
@Transactional
public class SalesManDaoImpl extends HibernateDaoSupport implements SalesManDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from Salesman";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<Salesman> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Salesman.class);
        List<Salesman> salesmanList = (List<Salesman>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return salesmanList;
    }

    @Override
    public void save(Salesman salesman) {
        this.getHibernateTemplate().save(salesman);
    }

    @Override
    public Salesman findById(String sid) {
        return this.getHibernateTemplate().get(Salesman.class, sid);
    }

    @Override
    public void update(Salesman salesman) {
        this.getHibernateTemplate().update(salesman);
    }

    @Override
    public void delete(Salesman salesman) {
        this.getHibernateTemplate().delete(salesman);
    }

    @Override
    public Salesman findByUserNameAndPassword(Salesman salesman) {
        String hql = "from Salesman where sid = ? and pwd= ?";
        List<?> list =  this.getHibernateTemplate().find(hql,salesman.getSid(),salesman.getPwd());
        System.out.println("salesmanok");
        if(list.size()>0){
            System.out.println(list.get(0));
            return (Salesman) list.get(0);
        }else {
            System.out.println("没查出来业务员");
            return null;
        }
    }
}
