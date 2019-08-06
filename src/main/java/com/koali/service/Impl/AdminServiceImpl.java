package com.koali.service.Impl;

import com.koali.dao.AdminDao;
import com.koali.pojo.Admin;
import com.koali.service.AdminService;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:08
 */
public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao;

    public void setAdminDao(AdminDao adminDao) {
        this.adminDao = adminDao;
    }

    @Override
    public Admin findById(String adminid) {
        return null;
    }

    @Override
    public void update(Admin admin) {

    }

    @Override
    public Admin login(Admin admin) {
        Admin existAdmin =adminDao.findByUserNameAndPassword(admin);
        return existAdmin;
    }
}
