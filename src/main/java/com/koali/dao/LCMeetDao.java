package com.koali.dao;

import com.koali.pojo.Lcmeet;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:59
 */
public interface LCMeetDao {
    void save(Lcmeet lcmeet);

    Lcmeet findById(Integer lcmeetid);

    void update(Lcmeet lcmeet);

    void delete(Lcmeet lcmeet);

    List<Lcmeet> findByCom(String comcode);
}
