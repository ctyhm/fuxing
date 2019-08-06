package com.koali.dao;

import com.koali.pojo.Ldcom;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:01
 */
public interface LDComDao {
    int findCount();
    List<Ldcom> findByPage(int begin, int pageSize);

    void save(Ldcom ldcom);

    Ldcom findById(String ldcomid);

    void update(Ldcom ldcom);

    void delete(Ldcom ldcom);

    List<Ldcom> find();
}
