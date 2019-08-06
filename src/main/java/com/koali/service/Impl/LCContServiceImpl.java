package com.koali.service.Impl;

import com.koali.dao.LCContDao;
import com.koali.pojo.Lccont;
import com.koali.service.LCContService;
import java.util.List;
/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:13
 */
public class LCContServiceImpl implements LCContService {

    LCContDao lcContDao;

    public void setLcContDao(LCContDao lcContDao) {
        this.lcContDao = lcContDao;
    }

    @Override
    public void save(Lccont lccont) {
        lcContDao.save(lccont);
    }

    @Override
    public Lccont findById(String lccontid) {
        return lcContDao.findById(lccontid);
    }

    @Override
    public void update(Lccont lccont) {
        lcContDao.update(lccont);
    }

    @Override
    public void delete(Lccont lccont) {
        lcContDao.delete(lccont);
    }

    @Override
    public Lccont load(String lccontid) {
        return lcContDao.load(lccontid);
    }

    @Override
    public List<Lccont> findByCom(String comcode,String contState) {
        return lcContDao.findByCom(comcode,contState);
    }
}
