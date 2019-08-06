package com.koali.service;

import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:24
 */
public interface SalesManService {

    PageBean<Salesman> findByPage(Integer currPage);

    void save(Salesman salesman);

    Salesman findById(String salesmanid);

    void update(Salesman salesman);

    void delete(Salesman salesman);

    Salesman login(Salesman salesman);
}
