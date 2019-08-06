package com.koali.dao.Impl;

import com.koali.dao.LCContDao;
import com.koali.pojo.Lccont;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:51
 */
@Transactional
public class LCContDaoImpl extends HibernateDaoSupport implements LCContDao {

    @Override
    public void save(Lccont lccont) {
        this.getHibernateTemplate().save(lccont);
    }

    @Override
    public Lccont findById(String lccontid) {
        return this.getHibernateTemplate().get(Lccont.class,lccontid);
    }

    @Override
    public void update(Lccont lccont) {
        this.getHibernateTemplate().update(lccont);
    }

    @Override
    public Lccont load(String lccontid) {
        return this.getHibernateTemplate().get(Lccont.class,lccontid);
    }

    @Override
    public void delete(Lccont lccont) {
        this.getHibernateTemplate().delete(lccont);
    }

    @Override
    public List<Lccont> findByCom(String comcode,String conState) {
        Lccont lccont=new Lccont();
        lccont.setManageCom(comcode);
        lccont.setContState(conState);
        return this.getHibernateTemplate().findByExample(lccont);
    }
}
