package com.koali.dao;

import com.koali.pojo.Lcgrpcont;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:52
 */
public interface LCGrpContDao {
    void save(Lcgrpcont lcgrpcont);

    Lcgrpcont findById(String lcgrpcontid);

    void update(Lcgrpcont lcgrpcont);

    void delete(Lcgrpcont lcgrpcont);

    List<Lcgrpcont> findByCom(String comcode, String remark);

}
