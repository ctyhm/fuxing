package com.koali.action;

import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;
import com.koali.service.SalesManService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:34
 */
public class SalesManAction extends ActionSupport implements ModelDriven<Salesman> {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    private Salesman salesman = new Salesman();

    public Salesman getSalesman() {
        return salesman;
    }

    public void setSalesman(Salesman salesman) {
        this.salesman = salesman;
    }


    @Override
    public Salesman getModel() {
        return salesman;
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
    @Autowired
    private SalesManService salesManService;

    //查询数据
    public String findAll(){
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            PageBean<Salesman> pageBean = salesManService.findByPage(currPage);
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
    //添加业务员
    public String save(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        HttpServletRequest request= ServletActionContext.getRequest();
        String salesmanid=request.getParameter("salesmanid");
        String salesmanpwd=request.getParameter("salesmanpwd");
        String salesmanname=request.getParameter("salesmanname");
        String salesmansex=request.getParameter("salesmansex");
        String salesmanposi=request.getParameter("salesmanposi");
        String salesmanage=request.getParameter("salesmanage");
        if(salesmanage!=""){
            Integer salesage=Integer.parseInt(salesmanage);
            salesman.setSage(salesage);
        }
        String comno=request.getParameter("comno");
        String comname=request.getParameter("comname");
        String salesmanlimit=request.getParameter("salesmanlimit");
        String startdate = request.getParameter("startdate");
        if(startdate!="") {
            java.util.Date sdate = null;
            try {
                sdate = sdf.parse(startdate);           //string 转成date
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date stdate = new java.sql.Date(sdate.getTime());
            salesman.setStartdate(stdate);
        }
        String enddate=request.getParameter("enddate");
        if(enddate!="") {
            java.util.Date edate = null;
            try {
                edate = sdf.parse(enddate);             //string 转成date
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date endate = new java.sql.Date(edate.getTime());
            salesman.setEnddate(endate);
        }
        String salesmanstate=request.getParameter("salesmanstate");
        String saddress=request.getParameter("saddress");
        String salesmanphone=request.getParameter("salesmanphone");
        String salesmanemail=request.getParameter("salesmanemail");
        salesman.setSid(salesmanid);
        salesman.setPwd(salesmanpwd);
        salesman.setSname(salesmanname);
        salesman.setSsex(salesmansex);
        salesman.setPosi(salesmanposi);

        salesman.setComcode(comno);
        salesman.setComname(comname);
        salesman.setSmanlimit(salesmanlimit);
        salesman.setSmanstate(salesmanstate);
        salesman.setAddress(saddress);
        salesman.setSemail(salesmanemail);
        salesman.setSphone(salesmanphone);
        Salesman existSalesman=salesManService.findById(salesmanid);
        if(existSalesman==null){
            salesManService.save(salesman);
        }else {
            request.setAttribute("salesmanmsg","用户已存在");
        }
        findAll();
        return "findAll";
    }

    // 修改业务员信息
    public String update() {
        HttpServletRequest request=ServletActionContext.getRequest();
        String stanu=request.getParameter("salesmanid");
        System.out.println(stanu);
        String str[]=stanu.split(", ");
        System.out.println(str[0]);
        salesman=salesManService.findById(str[0]);
        System.out.println(str[1]);
        System.out.println(str[2]);
        salesman.setSid(str[0]);
        salesman.setPwd(str[0]);
        salesman.setComcode(str[1]);
        salesman.setSname(str[2]);
        salesman.setPosi(str[3]);
        salesman.setSmanstate(str[4]);
        salesman.setSemail(str[5]);
        salesman.setSphone(str[6]);
        salesManService.update(salesman);
        return "updateSuccess";
    }
    // 删除业务员
    public String delete() {
        HttpServletRequest request= ServletActionContext.getRequest();
        String salesmanid=request.getParameter("salesmanid");
        System.out.println("salesmanid");
        salesman = salesManService.findById(salesmanid);
        salesManService.delete(salesman);
        return "deleteSuccess";
    }

    public void setSalesManService(SalesManService salesManService) {
        this.salesManService = salesManService;
    }


    public String asearchcomein() {
        return "asearchcomein";
    }

    public String asearch(){
        String salesmanno=request.getParameter("salesmanno");
        salesman=salesManService.findById(salesmanno);
        if(salesman!=null){
            System.out.println(salesman.getSname());
            return "asearch";
        }
        return "asearchError";
    }
}
