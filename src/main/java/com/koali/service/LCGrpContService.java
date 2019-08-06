package com.koali.service;

import com.koali.pojo.Lcgrpcont;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:13
 */
public interface LCGrpContService {

    void save(Lcgrpcont lcgrpcont);

    Lcgrpcont findById(String lcgrpcontid);

    void update(Lcgrpcont lcgrpcont);

    void delete(Lcgrpcont lcgrpcont);

    List<Lcgrpcont> findByCom(String comcode, String remark);
}
