package com.koali.dao;

import com.koali.pojo.Lcgrpmeet;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:56
 */
public interface LCGrpMeetDao {
    int findCount();
    List<Lcgrpmeet> findByPage(int begin, int pageSize);

    void save(Lcgrpmeet lcgrpmeet);

    Lcgrpmeet findById(Integer lcgrpmeetid);

    void update(Lcgrpmeet lcgrpmeet);

    void delete(Lcgrpmeet lcgrpmeet);

    List<Lcgrpmeet> findByCom(String comcode);

}
