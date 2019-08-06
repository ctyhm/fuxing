package com.koali.dao;

import com.koali.pojo.Grpuser;
import com.koali.pojo.User;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:38
 */
public interface GrpUserDao {
    int findCount();
    List<Grpuser> findByPage(int begin, int pageSize);

    void save(Grpuser grpuser);

    Grpuser findById(String grpuserid);

    void update(Grpuser grpuser);

    void delete(Grpuser grpuser);

    Grpuser findByUserNameAndPassword(Grpuser grpuser);
}
