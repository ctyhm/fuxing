package com.koali.service;

import com.koali.pojo.Admin;
import com.koali.pojo.PageBean;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:06
 */
public interface AdminService {

    Admin findById(String adminid);

    void update(Admin admin);

    Admin login(Admin admin);
}
