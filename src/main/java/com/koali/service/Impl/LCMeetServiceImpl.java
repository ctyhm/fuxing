package com.koali.service.Impl;

import com.koali.dao.LCMeetDao;
import com.koali.pojo.Lcmeet;
import com.koali.service.LCMeetService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:21
 */
public class LCMeetServiceImpl implements LCMeetService {
    private LCMeetDao lcMeetDao;

    public void setLcMeetDao(LCMeetDao lcMeetDao) {
        this.lcMeetDao = lcMeetDao;
    }

    /*@Override
    public PageBean<Lcmeet> findByPage(Integer currPage) {
        PageBean<Lcmeet> pageBean = new PageBean<Lcmeet>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = lcMeetDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<Lcmeet> list = lcMeetDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }*/

    @Override
    public void save(Lcmeet lcmeet) {
        lcMeetDao.save(lcmeet);
    }

    @Override
    public Lcmeet findById(Integer lcmeetid) {
        return lcMeetDao.findById(lcmeetid);
    }

    @Override
    public void update(Lcmeet lcmeet) {
        lcMeetDao.update(lcmeet);
    }

    @Override
    public void delete(Lcmeet lcmeet) {
        lcMeetDao.delete(lcmeet);
    }

    @Override
    public List<Lcmeet> findByCom(String comcode) {
        return lcMeetDao.findByCom(comcode);
    }
}
