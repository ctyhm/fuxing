package com.koali.action;

import com.koali.pojo.*;
import com.koali.service.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class UserAction extends ActionSupport{
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();
    private User user = new User();
    private User regi=new User();

    private Grpuser grpuser=new Grpuser();

    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    private GrpUserService grpUserService;

    public void setGrpUserService(GrpUserService grpUserService) {
        this.grpUserService = grpUserService;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getRegi() {
        return regi;
    }

    public void setRegi(User regi) {
        this.regi = regi;
    }

    private Integer currPage = 1;
    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String register(){
        //调用Service层
        User existUser = userService.register(regi);
        if(regi.getUserid()==""){
            System.out.println("111");
            request.setAttribute("idmsg","用户名不能为空");
            return ERROR;
        }
        if(existUser==null){
            System.out.println(regi.getUserid());
            System.out.println("222");
            Date date=new Date();
            java.sql.Date stdate = new java.sql.Date(date.getTime());
            regi.setMakedate(stdate);
            regi.setUsertype("个人");
            regi.setUserstate("正常");
            userService.save(regi);
            session.setAttribute("username",regi.getUname());
            return SUCCESS;
        }else
        {
            request.setAttribute("idmsg","用户已存在");
            return ERROR;
        }
    }

    public String login(){
        String uid=request.getParameter("uid");
        String pwd=request.getParameter("pwd");
        String role=request.getParameter("role");
        if(role.equals("1")){
            try {
                user.setUserid(uid);
                user.setPassword(pwd);
                User existuser = userService.login(user);
                if(existuser==null){
                    request.setAttribute("msg","用户名或者密码错误");//用户名或者密码错误
                    return "loginError";
                }else
                {
                    //登录成功
                    session.setAttribute("uid",existuser.getUserid());
                    session.setAttribute("uname",existuser.getUname());
                    session.setAttribute("role","1");//个人用户角色1
                    System.out.println(existuser.getUname());
                    return "loginSuccess";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(role.equals("2")){
            try {
                grpuser.setGrpuid(uid);
                grpuser.setPassword(pwd);
                Grpuser existgrpuser = grpUserService.login(grpuser);
                if(existgrpuser==null){
                    request.setAttribute("msg","团体用户名或者密码错误");
                    return "loginError";
                }else
                {
                    //业务员登录成功u
                    session.setAttribute("uid",existgrpuser.getGrpuid());
                    session.setAttribute("uname",existgrpuser.getUname());
                    session.setAttribute("role","2");//团体用户角色2
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

    public String logout(){
        session.invalidate();
        return "logout";
    }

    public String findAll() {
        PageBean<User> pageBean = userService.findByPage(currPage);
        // 将pageBean存入到值栈中
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String save() {
        userService.save(user);
        return "saveSuccess";
    }

    public String update() {
        userService.update(user);
        return "updateSuccess";
    }

    public String delete() {
        user=userService.findById(user.getUserid());
        userService.delete(user);
        return "deleteSuccess";
    }


    ///////////////////////////////////find lcpol & ldcom/////////////////////////////////////////////
    LCPolService lcPolService;
    LDComService ldcomService;

    public void setLcPolService(LCPolService lcPolService) {//注入service
        this.lcPolService = lcPolService;
    }

    public void setLdcomService(LDComService ldcomService) {
        this.ldcomService = ldcomService;
    }

    List<Lcpol> perpollist=new ArrayList<Lcpol>();

    public List<Lcpol> getPerpollist() {//getperpollist让前台能够取到list对象
        return perpollist;
    }
    List<Ldcom> percomlist =new ArrayList<Ldcom>();

    public List<Ldcom> getPercomlist() {//getpercomlist让前台能够取到list对象
        return percomlist;
    }
    public void setPerpollist(List<Lcpol> perpollist) {
        this.perpollist = perpollist;
    }
    public void setPercomlist(List<Ldcom> percomlist) {
        this.percomlist = percomlist;
    }

    public String findper(){
        if(session.getAttribute("uid")!=null && session.getAttribute("role")=="1"){
            System.out.println("permeet");
            perpollist=lcPolService.find();
            percomlist=ldcomService.find();
            System.out.println(percomlist.get(1).getComName());
            System.out.println(perpollist.get(0).getGrpName());
            ActionContext.getContext().getValueStack().push(perpollist);
            ActionContext.getContext().getValueStack().push(percomlist);
            return "findper";
        }else {
            return "findERROR";
        }

    }
    ///////////////////////////////////find lcgpol & ldcom/////////////////////////////////////////////



    /*public String find(){

        ldcom=percomlist.get(1);
        System.out.println(ldcom.getComName());
        ActionContext.getContext().getValueStack().push(percomlist);
        return "find";
    }*/
///////////////////////////////////find lcgrppol & ldcom/////////////////////////////////////////////
    List<Lcgrppol> grppollist=new ArrayList<Lcgrppol>();

    public List<Lcgrppol> getGrppollist() {
        return grppollist;
    }

    public void setGrppollist(List<Lcgrppol> grppollist) {
        this.grppollist = grppollist;
    }

    LCGrpPolService lcGrpPolService;

    public void setLcGrpPolService(LCGrpPolService lcGrpPolService) {
        this.lcGrpPolService = lcGrpPolService;
    }

    public String findgrp(){
        if(session.getAttribute("uid")!=null && session.getAttribute("role")=="2"){
            System.out.println("grpmeet");
            percomlist=ldcomService.find();
            grppollist=lcGrpPolService.find();
            ActionContext.getContext().getValueStack().push(percomlist);
            ActionContext.getContext().getValueStack().push(grppollist);
            return "findgrp";
        }else {
            return "findERROR";
        }
    }
    ///////////////////////////////////find lcgrppol & ldcom/////////////////////////////////////////////
}
