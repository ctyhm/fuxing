package com.koali.dao;

import com.koali.pojo.Lcgrpinsured;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:54
 */
public interface LCGrpContInsuredDao {
    void save(Lcgrpinsured lcgrpinsured);

    Lcgrpinsured findById(Integer lcgrpinsuredid);

    void update(Lcgrpinsured lcgrpinsured);

    void delete(Lcgrpinsured lcgrpinsured);

    List<Lcgrpinsured> findBygrpContNo(String grpContNo);

    int findcount(String grpContNo);

}
