package com.koali.service;

import com.koali.pojo.Lcpol;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:21
 */
public interface LCPolService {

    PageBean<Lcpol> findByPage(Integer currPage);

    void save(Lcpol lcpol);

    Lcpol findById(String lcpolid);

    void update(Lcpol lcpol);

    void delete(Lcpol lcpol);

    List<Lcpol> find();
}
