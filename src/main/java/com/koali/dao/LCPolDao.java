package com.koali.dao;

import com.koali.pojo.Lcpol;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:00
 */
public interface LCPolDao {
    int findCount();
    List<Lcpol> findByPage(int begin, int pageSize);

    void save(Lcpol lcpol);

    Lcpol findById(String lcpolid);

    void update(Lcpol lcpol);

    void delete(Lcpol lcpol);

    List<Lcpol> find();

}
