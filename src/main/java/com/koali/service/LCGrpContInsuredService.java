package com.koali.service;

import com.koali.pojo.Lcgrpinsured;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:15
 */
public interface LCGrpContInsuredService {

    List<Lcgrpinsured> findBygrpContNo(String grpContNo);

    void save(Lcgrpinsured lcgrpinsured);

    Lcgrpinsured findById(Integer orderid);

    int findcount(String grpContNo);

    void update(Lcgrpinsured lcgrpinsured);

    void delete(Lcgrpinsured lcgrpinsured);
}
