package com.koali.action;

import com.koali.pojo.*;
import com.koali.service.GrpUserService;
import com.koali.service.LCGrpMeetService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:35
 */
public class LCGrpMeetAction extends ActionSupport {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    private Grpuser grpuser = new Grpuser();
    private Lcgrpmeet lcgrpmeet=new Lcgrpmeet();

    private GrpUserService grpUserService;
    private LCGrpMeetService lcGrpMeetService;

    public void setGrpUserService(GrpUserService grpUserService) {
        this.grpUserService = grpUserService;
    }

    public void setLcGrpMeetService(LCGrpMeetService lcGrpMeetService) {
        this.lcGrpMeetService = lcGrpMeetService;
    }

    private Integer currPage = 1;
    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }



    List<Lcgrpmeet> list=new ArrayList<Lcgrpmeet>();

    public List<Lcgrpmeet> getList() {
        return list;
    }

    public void setList(List<Lcgrpmeet> list) {
        this.list = list;
    }

    public String findAll() {
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            list = lcGrpMeetService.findByCom(session.getAttribute("comcode").toString());
            // 将pageBean存入到值栈中
            //ActionContext.getContext().getValueStack().push(pageBean);
            return "findAll";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }

    }

    public String save() {
        String appntname=request.getParameter("appntname");
        String companyname=request.getParameter("companyname");
        String ldcomname=request.getParameter("ldcomname").substring(0,4);
        String polname=request.getParameter("polname").substring(0,6);
        String meetday=request.getParameter("meetday");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        if(appntname==""){
            request.setAttribute("meetmsg","投保人不能为空");
            return "meetError";
        }
        if(companyname==""){
            request.setAttribute("meetmsg","单位名称不能为空");
            return "meetError";
        }
        if(ldcomname==""){
            request.setAttribute("meetmsg","网点不能为空");
            return "meetError";
        }
        if(meetday==""){
            request.setAttribute("meetmsg","日期不能为空");
            return "meetError";
        }
        if(email==""&&phone==""){
            request.setAttribute("meetmsg","邮箱或电话不能为空");
            return "meetError";
        }
        lcgrpmeet.setGrpuid(session.getAttribute("uid").toString());
        lcgrpmeet.setLpname(appntname);
        lcgrpmeet.setCompname(companyname);
        lcgrpmeet.setComcode(ldcomname);
        lcgrpmeet.setGrpPolNo(polname);
        java.util.Date mdate = null;
        try {
            mdate = sdf.parse(meetday);  //string 转成date
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date meetdate = new java.sql.Date(mdate.getTime());//util.Date转sql.Date
        lcgrpmeet.setMeetdate(meetdate);
        lcgrpmeet.setEmail(email);
        lcgrpmeet.setPhone(phone);
        lcgrpmeet.setGrpmeetstate("正常");
        lcGrpMeetService.save(lcgrpmeet);
        return "saveSuccess";
    }

    public String update() {
        HttpServletRequest request=ServletActionContext.getRequest();
        String stanu=request.getParameter("lcmeetid");
        System.out.println(stanu);
        String str[]=stanu.split(", ");
        System.out.println(str[0]);
        System.out.println(str[1]);
        System.out.println(str[2]);
        lcgrpmeet.setGrpmid(Integer.parseInt(str[0]));
        lcgrpmeet.setLpname(str[1]);
        lcgrpmeet.setCompname(str[2]);
        lcgrpmeet.setComcode(str[3]);
        if(str[4]!=""){
            lcgrpmeet.setGrpPolNo(str[4]);
        }
        if(str[5]!="") {
            java.util.Date sdate = null;
            try {
                sdate = sdf.parse(str[5]);           //string 转成date
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date stdate = new java.sql.Date(sdate.getTime());
            lcgrpmeet.setMeetdate(stdate);
        }
        if(str[6]!=""){
            lcgrpmeet.setEmail(str[6]);
        }
        lcgrpmeet.setPhone(str[7]);
        lcGrpMeetService.update(lcgrpmeet);
        return "updateSuccess";
    }

    public String delete() {
        String lcmeetid=request.getParameter("lcmeetid");
        System.out.println(lcmeetid);
        lcgrpmeet=lcGrpMeetService.findById(Integer.parseInt(lcmeetid));
        lcGrpMeetService.delete(lcgrpmeet);
        return "deleteSuccess";
    }

}
