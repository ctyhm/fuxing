package com.koali.dao;

import com.koali.pojo.Lccont;

import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:50
 */
public interface LCContDao {

    void save(Lccont lccont);

    Lccont findById(String lccontid);

    void update(Lccont lccont);

    Lccont load(String lccontid);

    void delete(Lccont lccont);

    List<Lccont> findByCom(String comcode,String contState);

}
