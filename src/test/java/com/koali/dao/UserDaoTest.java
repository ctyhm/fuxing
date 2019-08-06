package com.koali.dao;

import com.koali.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.Assert.*;
@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class UserDaoTest {
    @Autowired
    private UserDao userDao;
    @Test
    public void save() throws Exception {
        User user = new User();
        user.setUserid("15541875612");
        user.setUname("陈涛");
        userDao.save(user);
    }
}