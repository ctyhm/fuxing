package com.koali.dao.Impl;

import com.koali.dao.AdminDao;
import com.koali.pojo.Admin;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:49
 */
@Transactional
public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
    @Override
    public Admin findById(String adminid) {
        return null;
    }

    @Override
    public void update(Admin admin) {

    }

    @Override
    public Admin findByUserNameAndPassword(Admin admin) {
        String hql = "from Admin where sid = ? and pwd= ?";
        List<?> list =  this.getHibernateTemplate().find(hql,admin.getSid(),admin.getPwd());
        System.out.println("adminok");
        if(list.size()>0){
            System.out.println(list.get(0));
            return (Admin) list.get(0);
        }else {
            System.out.println("没查出来管理员");
            return null;
        }
    }
}
