package com.koali.dao.Impl;

import com.koali.dao.GrpUserDao;
import com.koali.pojo.Admin;
import com.koali.pojo.Grpuser;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:46
 */
@Transactional
public class GrpUserDaoImpl extends HibernateDaoSupport implements GrpUserDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from Grpuser";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        } else {
            return 0;
        }
    }

    @Override
    public List<Grpuser> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Grpuser.class);
        List<Grpuser> list = (List<Grpuser>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return list;
    }

    @Override
    public void save(Grpuser grpuser) {
        this.getHibernateTemplate().save(grpuser);
    }

    @Override
    public Grpuser findById(String grpuserid) {
        return this.getHibernateTemplate().get(Grpuser.class,grpuserid);
    }

    @Override
    public void update(Grpuser grpuser) {
        this.getHibernateTemplate().update(grpuser);
    }

    @Override
    public void delete(Grpuser grpuser) {
        this.getHibernateTemplate().delete(grpuser);
    }

    @Override
    public Grpuser findByUserNameAndPassword(Grpuser grpuser) {
        String hql = "from Grpuser where grpuid = ? and password= ?";
        List<?> list =  this.getHibernateTemplate().find(hql,grpuser.getGrpuid(),grpuser.getPassword());
        System.out.println("grpuserok");
        if(list.size()>0){
            System.out.println(list.get(0));
            return (Grpuser) list.get(0);
        }else {
            System.out.println("没查出来团体用户");
            return null;
        }
    }
}
