package com.koali.service;

import com.koali.pojo.PageBean;
import com.koali.pojo.User;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-24-2019/5/24-10:01
 */
public interface UserService {
    User register(User regi);

    PageBean<User> findByPage(Integer currPage);

    void save(User user);

    User findById(String userid);

    void update(User user);

    void delete(User user);

    User login(User user);
}
