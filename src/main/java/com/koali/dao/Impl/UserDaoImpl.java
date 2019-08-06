package com.koali.dao.Impl;

import com.koali.dao.UserDao;
import com.koali.pojo.Admin;
import com.koali.pojo.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-24-2019/5/24-9:53
 */
@Transactional
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
    @Override
    public int findCount() {
        String hql = "select count(*) from User";
        List<?> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return Integer.parseInt(list.get(0).toString());
        }else {
            return 0;
        }
    }

    @Override
    public List<User> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
        List<User> list = (List<User>) this.getHibernateTemplate().findByCriteria(
                criteria, begin, pageSize);
        return list;
    }

    @Override
    public void save(User user) {
        this.getHibernateTemplate().save(user);
    }

    @Override
    public User findById(String userid) {

        //return this.getHibernateTemplate().get(User.class, uid);
        return this.getHibernateTemplate().get(User.class,userid);
    }

    @Override
    public void update(User user) {
        this.getHibernateTemplate().update(user);
    }

    @Override
    public void delete(User user) {
        this.getHibernateTemplate().delete(user);
    }

    @Override
    public User findByUserNameAndPassword(User user) {
        String hql = "from User where userid = ? and password= ?";
        List<?> list =  this.getHibernateTemplate().find(hql,user.getUserid(),user.getPassword());
        System.out.println("userok");
        if(list.size()>0){
            System.out.println(list.get(0));
            return (User) list.get(0);
        }else {
            System.out.println("没查出来用户");
            return null;
        }
    }
}
