package com.koali.action;

import com.koali.pojo.Admin;
import com.koali.pojo.Salesman;
import com.koali.service.AdminService;
import com.koali.service.SalesManService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:34
 */
public class AdminAction extends ActionSupport {
    private Admin admin=new Admin();
    Salesman salesman=new Salesman();

    @Autowired
    private SalesManService salesManService;

    public void setSalesManService(SalesManService salesManService) {
        this.salesManService = salesManService;
    }

    private AdminService adminService;

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }


    @SuppressWarnings("unchecked")
    public String bcheckok(){
        System.out.println("bcheckok");
        return SUCCESS;
    }
    @SuppressWarnings("unchecked")
    public String bGrpcheckok(){
        System.out.println("bGrpcheckok");
        return SUCCESS;
    }
    @SuppressWarnings("unchecked")
    public String bpayok(){
        System.out.println("bpayok");
        return SUCCESS;
    }
    @SuppressWarnings("unchecked")
    public String bpolsign(){
        System.out.println("bpolsign");
        return SUCCESS;
    }

    @SuppressWarnings("unchecked")
    public String bsalesman(){
        System.out.println("bsalesman");
        return SUCCESS;
    }

    @SuppressWarnings("unchecked")
    public String bstatus(){
        System.out.println("bstatus");
        return SUCCESS;
    }

    public String login(){
        HttpServletRequest request= ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String iden=request.getParameter("iden");
        if(iden.equals("管理员")){
            try {
                admin.setSid(username);
                admin.setPwd(password);
                Admin existadmin = adminService.login(admin);
                if(existadmin==null){
                    request.setAttribute("msg","用户名或者密码错误");//用户名或者密码错误
                    return "loginError";
                }else
                {
                    //登录成功
                    session.setAttribute("sid",existadmin.getSid());
                    session.setAttribute("name",existadmin.getSname());
                    session.setAttribute("comcode",existadmin.getComcode());
                    session.setAttribute("srole","3");//管理员角色为3
                    System.out.println(existadmin.getSname());
                    return "loginSuccess";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(iden.equals("业务员")){
            try {
                salesman.setSid(username);
                System.out.println(username);
                salesman.setPwd(password);
                System.out.println(salesman.getSid());
                System.out.println(salesman.getPwd());
                Salesman existsalesman = salesManService.login(salesman);
                if(existsalesman==null){
                    request.setAttribute("msg","业务员用户名或者密码错误");//业务员用户名或者密码错误
                    return "loginError";
                }else
                {
                    //业务员登录成功
                    session.setAttribute("sid",existsalesman.getSid());
                    session.setAttribute("name",existsalesman.getSname());
                    session.setAttribute("comcode",existsalesman.getComcode());
                    session.setAttribute("srole","4");//业务员角色为4
                    System.out.println(existsalesman.getSname());
                    return "loginSuccess";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        else {
            request.setAttribute("msg","登录失败,用户名不存在！");//登录失败
            return "loginError";
        }
        return "loginError";
    }
}
