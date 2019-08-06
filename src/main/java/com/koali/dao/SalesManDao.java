package com.koali.dao;

import com.koali.pojo.Admin;
import com.koali.pojo.Salesman;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:04
 */
public interface SalesManDao {
    int findCount();
    List<Salesman> findByPage(int begin, int pageSize);

    void save(Salesman salesman);

    Salesman findById(String salesmanid);

    void update(Salesman salesman);

    void delete(Salesman salesman);

    Salesman findByUserNameAndPassword(Salesman salesman);
}
