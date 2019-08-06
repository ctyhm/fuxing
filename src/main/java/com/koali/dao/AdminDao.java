package com.koali.dao;

import com.koali.pojo.Admin;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:47
 */
public interface AdminDao {
    Admin findById(String adminid);

    void update(Admin admin);

    Admin findByUserNameAndPassword(Admin admin);
}
