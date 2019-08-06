package com.koali.service;

import com.koali.pojo.Lcgrpmeet;
import com.koali.pojo.PageBean;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:17
 */
public interface LCGrpMeetService {
    //Lcgrpmeet register(Lcgrpmeet regi);

    PageBean<Lcgrpmeet> findByPage(Integer currPage);

    void save(Lcgrpmeet lcgrpmeet);

    Lcgrpmeet findById(Integer lcgrpmeetid);

    void update(Lcgrpmeet lcgrpmeet);

    void delete(Lcgrpmeet lcgrpmeet);

    List<Lcgrpmeet> findByCom(String comcode);
}
