package com.koali.service.Impl;

import com.koali.dao.LCGrpPolDao;
import com.koali.pojo.Lcgrppol;
import com.koali.pojo.Lcpol;
import com.koali.pojo.PageBean;
import com.koali.service.LCGrpPolService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:19
 */
public class LCGrpPolServiceImpl implements LCGrpPolService {
    private LCGrpPolDao lcGrpPolDao;

    public void setLcGrpPolDao(LCGrpPolDao lcGrpPolDao) {
        this.lcGrpPolDao = lcGrpPolDao;
    }

    @Override
    public PageBean<Lcgrppol> findByPage(Integer currPage) {
        PageBean<Lcgrppol> pageBean = new PageBean<Lcgrppol>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = lcGrpPolDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Lcgrppol> grppollist = lcGrpPolDao.findByPage(begin, pageSize);
        pageBean.setList(grppollist);
        return pageBean;
    }

    @Override
    public void save(Lcgrppol lcgrppol) {
        lcGrpPolDao.save(lcgrppol);
    }

    @Override
    public Lcgrppol findById(String lcgrppolid) {
        return lcGrpPolDao.findById(lcgrppolid);
    }

    @Override
    public void update(Lcgrppol lcgrppol) {
        lcGrpPolDao.update(lcgrppol);
    }

    @Override
    public void delete(Lcgrppol lcgrppol) {
        lcGrpPolDao.delete(lcgrppol);
    }

    @Override
    public List<Lcgrppol> find() {
        List<Lcgrppol> pollist = lcGrpPolDao.find();
        return pollist;
    }
}
