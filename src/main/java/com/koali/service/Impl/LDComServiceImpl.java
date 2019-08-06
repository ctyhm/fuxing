package com.koali.service.Impl;

import com.koali.dao.LDComDao;
import com.koali.pojo.Ldcom;
import com.koali.pojo.PageBean;
import com.koali.service.LDComService;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:24
 */
public class LDComServiceImpl implements LDComService {
    private LDComDao ldComDao;

    public void setLdComDao(LDComDao ldComDao) {
        this.ldComDao = ldComDao;
    }

    @Override
    public PageBean<Ldcom> findByPage(Integer currPage) {
        PageBean<Ldcom> pageBean = new PageBean<Ldcom>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = ldComDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Ldcom> comlist = ldComDao.findByPage(begin, pageSize);
        pageBean.setList(comlist);
        return pageBean;
    }

    @Override
    public void save(Ldcom ldcom) {
        ldComDao.save(ldcom);
    }

    @Override
    public Ldcom findById(String ldcomid) {
        return ldComDao.findById(ldcomid);
    }

    @Override
    public void update(Ldcom ldcom) {
        ldComDao.update(ldcom);
    }

    @Override
    public void delete(Ldcom ldcom) {
        ldComDao.delete(ldcom);
    }

    @Override
    public List<Ldcom> find() {
        List<Ldcom> comlist = ldComDao.find();
        return comlist;
    }

}
