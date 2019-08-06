package com.koali.service;

import com.koali.pojo.Lcgrppol;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:18
 */
public interface LCGrpPolService {

    PageBean<Lcgrppol> findByPage(Integer currPage);

    void save(Lcgrppol lcgrppol);

    Lcgrppol findById(String lcgrppolid);

    void update(Lcgrppol lcgrppol);

    void delete(Lcgrppol lcgrppol);

    List<Lcgrppol> find();

}
