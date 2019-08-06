package com.koali.service;

import com.koali.pojo.Ldcom;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:23
 */
public interface LDComService {

    PageBean<Ldcom> findByPage(Integer currPage);

    void save(Ldcom ldcom);

    Ldcom findById(String ldcomid);

    void update(Ldcom ldcom);

    void delete(Ldcom ldcom);

    List<Ldcom> find();
}
