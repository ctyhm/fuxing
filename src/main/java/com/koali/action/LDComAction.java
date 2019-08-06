package com.koali.action;

import com.koali.pojo.Ldcom;
import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;
import com.koali.service.LDComService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:36
 */
public class LDComAction extends ActionSupport implements ModelDriven<Ldcom> {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    private Ldcom ldcom = new Ldcom();
    //注入模型驱动
    @Override
    public Ldcom getModel() {
        return ldcom;
    }
    //分页需要的当前页数

    private Integer currPage=1;

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    //注入Service
    private LDComService ldcomService;

    public LDComService getLdcomService() {
        return ldcomService;
    }

    public void setLdcomService(LDComService ldcomService) {
        this.ldcomService = ldcomService;
    }

    //查询数据

    public String findAll(){
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            PageBean<Ldcom> pageBean = ldcomService.findByPage(currPage);
            // 将pageBean存入到值栈中
            ActionContext.getContext().getValueStack().push(pageBean);
            return "findAll";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String afindAll(){
        PageBean<Ldcom> pageBean = ldcomService.findByPage(currPage);
        // 将pageBean存入到值栈中
        ActionContext.getContext().getValueStack().push(pageBean);
        return "afindAll";
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////


    //添加部门
    public String save(){
        HttpServletRequest request= ServletActionContext.getRequest();
        String lccomno=request.getParameter("lccomno");
        String lccomname=request.getParameter("lccomname");
        String lccompro=request.getParameter("lccompro");
        String lccomcity=request.getParameter("lccomcity");
        String lccomaddress=request.getParameter("lccomaddress");
        ldcom.setComCode(lccomno);
        ldcom.setComName(lccomname);
        ldcom.setComprovince(lccompro);
        ldcom.setComcity(lccomcity);
        ldcom.setComaddress(lccomaddress);
        //ldcom.setComperator(admin.getSid());
        ldcomService.save(ldcom);
        findAll();
        return "findAll";
    }
    //编辑部门信息
    public String edit() {
        // 模型驱动默认在值栈中
        ldcom = ldcomService.findById(ldcom.getComCode());
        ActionContext.getContext().getValueStack().push(ldcom);
        return "editSuccess";
    }
    // 修改部门
    public String update() {
        ldcomService.update(ldcom);
        return "updateSuccess";
    }
    // 删除部门
    public String delete() {
        // // 方法一 无法级联删除
        // departmentService.delete(department.getDid());
        // 方法二 先查询后删除
        HttpServletRequest request= ServletActionContext.getRequest();
        String comno=request.getParameter("comNo");
        System.out.println("comno");
        ldcom = ldcomService.findById(comno);
        ldcomService.delete(ldcom);
        return "deleteSuccess";
    }
}
