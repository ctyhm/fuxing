package com.koali.service.Impl;

import com.koali.dao.LCGrpMeetDao;
import com.koali.pojo.Lcgrpmeet;
import com.koali.pojo.PageBean;
import com.koali.service.LCGrpMeetService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:18
 */
public class LCGrpMeetServiceImpl implements LCGrpMeetService {
    private LCGrpMeetDao lcGrpMeetDao;

    public void setLcGrpMeetDao(LCGrpMeetDao lcGrpMeetDao) {
        this.lcGrpMeetDao = lcGrpMeetDao;
    }

    @Override
    public PageBean<Lcgrpmeet> findByPage(Integer currPage) {
        PageBean<Lcgrpmeet> pageBean = new PageBean<Lcgrpmeet>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = lcGrpMeetDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Lcgrpmeet> list = lcGrpMeetDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void save(Lcgrpmeet lcgrpmeet) {
        lcGrpMeetDao.save(lcgrpmeet);
    }

    @Override
    public Lcgrpmeet findById(Integer lcgrpmeetid) {
        return lcGrpMeetDao.findById(lcgrpmeetid);
    }

    @Override
    public void update(Lcgrpmeet lcgrpmeet) {
        lcGrpMeetDao.update(lcgrpmeet);
    }

    @Override
    public void delete(Lcgrpmeet lcgrpmeet) {
        lcGrpMeetDao.delete(lcgrpmeet);
    }

    @Override
    public List<Lcgrpmeet> findByCom(String comcode) {
        return lcGrpMeetDao.findByCom(comcode);
    }
}
