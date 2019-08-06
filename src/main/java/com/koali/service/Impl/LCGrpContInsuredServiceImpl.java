package com.koali.service.Impl;

import com.koali.dao.LCGrpContInsuredDao;
import com.koali.pojo.Lcgrpinsured;
import com.koali.pojo.PageBean;
import com.koali.service.LCGrpContInsuredService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:16
 */
public class LCGrpContInsuredServiceImpl implements LCGrpContInsuredService {
    LCGrpContInsuredDao lcGrpContInsuredDao;

    public void setLcGrpContInsuredDao(LCGrpContInsuredDao lcGrpContInsuredDao) {
        this.lcGrpContInsuredDao = lcGrpContInsuredDao;
    }

    @Override
    public List<Lcgrpinsured> findBygrpContNo(String grpContNo) {
        return lcGrpContInsuredDao.findBygrpContNo(grpContNo);
    }

    @Override
    public void save(Lcgrpinsured lcgrpinsured) {
        lcGrpContInsuredDao.save(lcgrpinsured);
    }

    @Override
    public Lcgrpinsured findById(Integer orderid) {
        return lcGrpContInsuredDao.findById(orderid);
    }

    @Override
    public int findcount(String grpContNo) {
        return lcGrpContInsuredDao.findcount(grpContNo);
    }

    @Override
    public void update(Lcgrpinsured lcgrpinsured) {
        lcGrpContInsuredDao.update(lcgrpinsured);
    }

    @Override
    public void delete(Lcgrpinsured lcgrpinsured) {
        lcGrpContInsuredDao.delete(lcgrpinsured);
    }
}
