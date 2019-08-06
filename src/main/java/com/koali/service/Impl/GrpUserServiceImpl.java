package com.koali.service.Impl;

import com.koali.dao.GrpUserDao;
import com.koali.pojo.Admin;
import com.koali.pojo.Grpuser;
import com.koali.pojo.PageBean;
import com.koali.service.GrpUserService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:10
 */
public class GrpUserServiceImpl implements GrpUserService {
    private GrpUserDao grpUserDao;

    public void setGrpUserDao(GrpUserDao grpUserDao) {
        this.grpUserDao = grpUserDao;
    }

    @Override
    public Grpuser register(Grpuser regi) {
        Grpuser existGrpuser =grpUserDao.findById(regi.getGrpuid());
        return existGrpuser;
    }

    @Override
    public PageBean<Grpuser> findByPage(Integer currPage) {
        PageBean<Grpuser> pageBean = new PageBean<Grpuser>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = grpUserDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Grpuser> list = grpUserDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void save(Grpuser grpuser) {
        grpUserDao.save(grpuser);
    }

    @Override
    public Grpuser findById(String grpuserid) {
        return grpUserDao.findById(grpuserid);
    }

    @Override
    public void update(Grpuser grpuser) {
        grpUserDao.update(grpuser);
    }

    @Override
    public void delete(Grpuser grpuser) {
        grpUserDao.delete(grpuser);
    }

    @Override
    public Grpuser login(Grpuser grpuser) {
        Grpuser existgrpuser =grpUserDao.findByUserNameAndPassword(grpuser);
        return existgrpuser;
    }
}
