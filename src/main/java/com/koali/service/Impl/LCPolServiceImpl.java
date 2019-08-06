package com.koali.service.Impl;

import com.koali.dao.LCPolDao;
import com.koali.dao.LDComDao;
import com.koali.pojo.Lcpol;
import com.koali.pojo.Ldcom;
import com.koali.pojo.PageBean;
import com.koali.service.LCPolService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:22
 */
public class LCPolServiceImpl implements LCPolService {
    private LCPolDao lcPolDao;

    public void setLcPolDao(LCPolDao lcPolDao) {
        this.lcPolDao = lcPolDao;
    }

    @Override
    public PageBean<Lcpol> findByPage(Integer currPage) {
        PageBean<Lcpol> pageBean = new PageBean<Lcpol>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = lcPolDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Lcpol> pollist = lcPolDao.findByPage(begin, pageSize);
        pageBean.setList(pollist);
        return pageBean;
    }

    @Override
    public void save(Lcpol lcpol) {
        lcPolDao.save(lcpol);
    }

    @Override
    public Lcpol findById(String lcpolid) {
        return lcPolDao.findById(lcpolid);
    }

    @Override
    public void update(Lcpol lcpol) {
        lcPolDao.update(lcpol);
    }

    @Override
    public void delete(Lcpol lcpol) {
        lcPolDao.delete(lcpol);
    }

    @Override
    public List<Lcpol> find() {
        List<Lcpol> pollist = lcPolDao.find();
        return pollist;
    }

}
