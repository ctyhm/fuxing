package com.koali.service.Impl;

import com.koali.dao.LCGrpContDao;
import com.koali.pojo.Lcgrpcont;
import com.koali.pojo.PageBean;
import com.koali.service.LCGrpContService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:15
 */
public class LCGrpContServiceImpl implements LCGrpContService {
    LCGrpContDao lcGrpContDao;

    public void setLcGrpContDao(LCGrpContDao lcGrpContDao) {
        this.lcGrpContDao = lcGrpContDao;
    }

    @Override
    public void save(Lcgrpcont lcgrpcont) {
        lcGrpContDao.save(lcgrpcont);
    }

    @Override
    public Lcgrpcont findById(String lcgrpcontid) {
        return lcGrpContDao.findById(lcgrpcontid);
    }

    @Override
    public void update(Lcgrpcont lcgrpcont) {
        lcGrpContDao.update(lcgrpcont);
    }

    @Override
    public void delete(Lcgrpcont lcgrpcont) {
        lcGrpContDao.delete(lcgrpcont);
    }

    @Override
    public List<Lcgrpcont> findByCom(String comcode, String remark) {
        return lcGrpContDao.findByCom(comcode,remark);
    }
}
