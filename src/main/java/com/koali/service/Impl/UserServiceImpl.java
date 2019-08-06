package com.koali.service.Impl;


import com.koali.dao.UserDao;
import com.koali.pojo.Admin;
import com.koali.pojo.PageBean;
import com.koali.pojo.User;
import com.koali.service.UserService;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-24-2019/5/24-10:07
 */
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User register(User user) {
        User existUser =userDao.findById(user.getUserid());
        return existUser;
    }


    @Override
    public PageBean<User> findByPage(Integer currPage) {
        PageBean<User> pageBean = new PageBean<User>();
        // 设置当前页数
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);
        // 设置总记录数
        int totalCount = userDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示的数据
        int begin = (currPage - 1) * pageSize;
        List<User> list = userDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public User findById(String uid) {
        return userDao.findById(uid);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delete(User user) {
        userDao.delete(user);
    }

    @Override
    public User login(User user) {
        User existUser =userDao.findByUserNameAndPassword(user);
        return existUser;
    }
}
