package com.koali.dao;

import com.koali.pojo.User;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-24-2019/5/24-9:42
 */
public interface UserDao {
    int findCount();
    List<User> findByPage(int begin, int pageSize);

    void save(User user);

    User findById(String userid);

    void update(User user);

    void delete(User user);

    User findByUserNameAndPassword(User user);
}
