package com.koali.service;

import com.koali.pojo.Lccont;
import java.util.List;
/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-16:12
 */
public interface LCContService {
    void save(Lccont lccont);

    Lccont findById(String lccontid);

    void update(Lccont lccont);

    void delete(Lccont lccont);

    Lccont load(String lccontid);

    List<Lccont> findByCom(String comcode,String contState);

}
