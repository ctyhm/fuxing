package com.koali.action;

import com.koali.pojo.Lcmeet;
import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;
import com.koali.pojo.User;
import com.koali.service.LCMeetService;
import com.koali.service.UserService;
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
public class LCMeetAction extends ActionSupport {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    private User user = new User();
    private Lcmeet lcmeet=new Lcmeet();

    private UserService userService;
    private LCMeetService lcMeetService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public void setLcMeetService(LCMeetService lcMeetService) {
        this.lcMeetService = lcMeetService;
    }

    private Integer currPage = 1;
    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    List<Lcmeet> list=new ArrayList<Lcmeet>();

    public List<Lcmeet> getList() {
        return list;
    }

    public void setList(List<Lcmeet> list) {
        this.list = list;
    }

    public String findAll() {
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            list = lcMeetService.findByCom(session.getAttribute("comcode").toString());
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
        String insuredname=request.getParameter("insuredname");
        String ldcomname=request.getParameter("ldcomname").substring(0,4);
        String polname=request.getParameter("polname").substring(0,6);
        String meetday=request.getParameter("meetday");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        if(appntname==""){
            request.setAttribute("meetmsg","投保人不能为空");
            return "meetError";
        }
        if(insuredname==""){
            request.setAttribute("meetmsg","被保人不能为空");
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
        lcmeet.setUserid(session.getAttribute("uid").toString());
        lcmeet.setLpname(appntname);
        lcmeet.setLinsuredname(insuredname);
        lcmeet.setComcode(ldcomname);
        lcmeet.setPolNo(polname);
        lcmeet.setMeetstate("1");//待处理
        java.util.Date mdate = null;
        try {
            mdate = sdf.parse(meetday);  //string 转成date
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date meetdate = new java.sql.Date(mdate.getTime());//util.Date转sql.Date
        lcmeet.setMeetdate(meetdate);
        lcmeet.setEmail(email);
        lcmeet.setPhone(phone);
        lcmeet.setMeetstate("正常");
        lcMeetService.save(lcmeet);
        return "saveSuccess";
    }

    public String update() {
        String stanu=request.getParameter("lcmeetid");
        System.out.println(stanu);
        String str[]=stanu.split(", ");
        System.out.println(str[0]);
        lcmeet=lcMeetService.findById(Integer.parseInt(str[0]));
        System.out.println(str[1]);
        System.out.println(str[2]);
        lcmeet.setLpname(str[1]);
        lcmeet.setLinsuredname(str[2]);
        lcmeet.setComcode(str[3]);
        if(str[4]!=""){
            lcmeet.setPolNo(str[4]);
        }
        if(str[5]!="") {
            java.util.Date sdate = null;
            try {
                sdate = sdf.parse(str[5]);           //string 转成date
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date stdate = new java.sql.Date(sdate.getTime());
            lcmeet.setMeetdate(stdate);
        }
        if(str[6]!=""){
            lcmeet.setEmail(str[6]);
        }
        lcmeet.setPhone(str[7]);
        lcMeetService.update(lcmeet);
        return "updateSuccess";
    }

    public String delete() {
        String lcmeetid=request.getParameter("lcmeetid");
        System.out.println(lcmeetid);
        lcmeet=lcMeetService.findById(Integer.parseInt(lcmeetid));
        lcMeetService.delete(lcmeet);
        return "deleteSuccess";
    }


}
