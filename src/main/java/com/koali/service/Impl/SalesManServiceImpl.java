package com.koali.service.Impl;

import com.koali.dao.AdminDao;
import com.koali.dao.SalesManDao;
import com.koali.pojo.Admin;
import com.koali.pojo.Ldcom;
import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;
import com.koali.service.SalesManService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:25
 */
public class SalesManServiceImpl implements SalesManService {
    private SalesManDao salesManDao;

    public void setSalesManDao(SalesManDao salesManDao) {
        this.salesManDao = salesManDao;
    }

    public SalesManDao getSalesManDao() {
        return salesManDao;
    }

    @Override
    public PageBean<Salesman> findByPage(Integer currPage) {
        PageBean<Salesman> pageBean = new PageBean<Salesman>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = salesManDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Salesman> manlist = salesManDao.findByPage(begin, pageSize);
        pageBean.setList(manlist);
        return pageBean;
    }

    @Override
    public void save(Salesman salesman) {
        salesManDao.save(salesman);
    }

    @Override
    public Salesman findById(String sid) {
        return salesManDao.findById(sid);
    }

    @Override
    public void update(Salesman salesman) {
        salesManDao.update(salesman);
    }

    @Override
    public void delete(Salesman salesman) {
        salesManDao.delete(salesman);
    }

    @Override
    public Salesman login(Salesman salesman) {
        Salesman existSalesman =salesManDao.findByUserNameAndPassword(salesman);
        return existSalesman;
    }
}
