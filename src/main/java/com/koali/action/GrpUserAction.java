package com.koali.action;

import com.koali.pojo.Grpuser;
import com.koali.pojo.PageBean;
import com.koali.service.GrpUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:33
 */
public class GrpUserAction extends ActionSupport implements ModelDriven<Grpuser> {
    private Grpuser grpuser = new Grpuser();
    private Grpuser grpregi=new Grpuser();

    public Grpuser getGrpuser() {
        return grpuser;
    }

    public void setGrpuser(Grpuser grpuser) {
        this.grpuser = grpuser;
    }

    public Grpuser getGrpregi() {
        return grpregi;
    }

    public void setGrpregi(Grpuser grpregi) {
        this.grpregi = grpregi;
    }

    @Override
    public Grpuser getModel() {
        return grpuser;
    }
    private Integer currPage = 1;
    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }
    public Integer getCurrPage() {
        return currPage;
    }
    //注入userService
    private GrpUserService grpUserService;

    public void setGrpUserService(GrpUserService grpUserService) {
        this.grpUserService = grpUserService;
    }

    public String register(){
        HttpServletRequest request= ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        //调用Service层
        Grpuser existGrpuser = grpUserService.register(grpregi);
        if(grpregi.getGrpuid()==""){
            System.out.println("111");
            request.setAttribute("gidmsg","用户名不能为空");
            return ERROR;
        }
        if(existGrpuser==null){
            System.out.println(grpregi.getGrpuid());
            System.out.println("222");
            Date date=new Date();
            java.sql.Date stdate=new java.sql.Date(date.getTime());
            grpregi.setMakedate(stdate);
            grpregi.setGrputype("团体");
            grpregi.setGrpustate("正常");
            grpUserService.save(grpregi);
            session.setAttribute("username",grpregi.getUname());
            return SUCCESS;
        }else
        {
            request.setAttribute("gidmsg","用户已存在");
            return ERROR;
        }
    }

    public String findAll() {
        PageBean<Grpuser> pageBean = grpUserService.findByPage(currPage);
        // 将pageBean存入到值栈中
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String save() {
        grpUserService.save(grpuser);
        return "saveSuccess";
    }

    public String update() {
        grpUserService.update(grpuser);
        return "updateSuccess";
    }

    public String delete() {
        grpuser=grpUserService.findById(grpuser.getGrpuid());
        grpUserService.delete(grpuser);
        return "deleteSuccess";
    }
}
