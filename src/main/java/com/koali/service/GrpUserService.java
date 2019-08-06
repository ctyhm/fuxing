package com.koali.service;

import com.koali.pojo.Grpuser;
import com.koali.pojo.PageBean;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:09
 */
public interface GrpUserService {
    Grpuser register(Grpuser regi);

    PageBean<Grpuser> findByPage(Integer currPage);

    void save(Grpuser grpuser);

    Grpuser findById(String grpuserid);

    void update(Grpuser grpuser);

    void delete(Grpuser grpuser);

    Grpuser login(Grpuser grpuser);
}
