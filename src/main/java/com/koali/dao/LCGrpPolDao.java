package com.koali.dao;

import com.koali.pojo.Lcgrppol;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:57
 */
public interface LCGrpPolDao {
    int findCount();
    List<Lcgrppol> findByPage(int begin, int pageSize);

    void save(Lcgrppol lcgrppol);

    Lcgrppol findById(String lcgrppolid);

    void update(Lcgrppol lcgrppol);

    void delete(Lcgrppol lcgrppol);

    List<Lcgrppol> find();

}
