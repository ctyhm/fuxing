package com.koali.action;

import com.koali.pojo.Lcgrpcont;
import com.koali.pojo.Lcgrpinsured;
import com.koali.service.LCGrpContInsuredService;
import com.koali.service.LCGrpContService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:37
 */
public class LCGrpInsuredAction extends ActionSupport {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    Lcgrpinsured lcgrpinsured=new Lcgrpinsured();

    LCGrpContInsuredService lcGrpContInsuredService;

    Lcgrpcont lcgrpcont=new Lcgrpcont();

    public Lcgrpcont getLcgrpcont() {
        return lcgrpcont;
    }

    public void setLcgrpcont(Lcgrpcont lcgrpcont) {
        this.lcgrpcont = lcgrpcont;
    }

    LCGrpContService lcGrpContService;

    public void setLcGrpContService(LCGrpContService lcGrpContService) {
        this.lcGrpContService = lcGrpContService;
    }

    public void setLcGrpContInsuredService(LCGrpContInsuredService lcGrpContInsuredService) {
        this.lcGrpContInsuredService = lcGrpContInsuredService;
    }

    List<Lcgrpinsured> grpinsuredlist=new ArrayList<Lcgrpinsured>();

    public List<Lcgrpinsured> getGrpinsuredlist() {
        return grpinsuredlist;
    }

    public void setGrpinsuredlist(List<Lcgrpinsured> grpinsuredlist) {
        this.grpinsuredlist = grpinsuredlist;
    }

    public String save(){
        String grpContNo=request.getParameter("grpContNo");
        String name=request.getParameter("name");
        String sex=request.getParameter("sex");
        String age=request.getParameter("age");
        String idnumber=request.getParameter("idnumber");
        lcgrpcont=lcGrpContService.findById(grpContNo);
        if(!lcgrpcont.getRemark().equals("待录入被保人")){
            return "canotInsured";
        }
        if(lcgrpcont.getPeoples()<=lcGrpContInsuredService.findcount(grpContNo)){
            return "peoplesfull";
        }
        lcgrpinsured.setGrpContNo(grpContNo);
        lcgrpinsured.setName(name);
        lcgrpinsured.setSex(sex);
        lcgrpinsured.setAge(Integer.parseInt(age));
        lcgrpinsured.setIdnumber(idnumber);
        lcGrpContInsuredService.save(lcgrpinsured);
        grpinsuredlist=lcGrpContInsuredService.findBygrpContNo(grpContNo);
        lcgrpcont=lcGrpContService.findById(grpContNo);
        return "saveSuccess";
    }


    public String asave(){
        String grpContNo=request.getParameter("grpContNo");
        String name=request.getParameter("name");
        String sex=request.getParameter("sex");
        String age=request.getParameter("age");
        String idnumber=request.getParameter("idnumber");
        lcgrpcont=lcGrpContService.findById(grpContNo);
        if(!lcgrpcont.getRemark().equals("待录入被保人")){
            return "canotInsured";
        }
        if(lcgrpcont.getPeoples()<=lcGrpContInsuredService.findcount(grpContNo)){
            return "peoplesfull";
        }
        lcgrpinsured.setGrpContNo(grpContNo);
        lcgrpinsured.setName(name);
        lcgrpinsured.setSex(sex);
        lcgrpinsured.setAge(Integer.parseInt(age));
        lcgrpinsured.setIdnumber(idnumber);
        lcGrpContInsuredService.save(lcgrpinsured);
        grpinsuredlist=lcGrpContInsuredService.findBygrpContNo(grpContNo);
        lcgrpcont=lcGrpContService.findById(grpContNo);
        return "asaveSuccess";
    }

    public String delete(){
        String orderid=request.getParameter("orderid");
        lcgrpinsured.setOrderid(Integer.parseInt(orderid));
        lcGrpContInsuredService.delete(lcgrpinsured);
        grpinsuredlist=lcGrpContInsuredService.findBygrpContNo(lcgrpinsured.getGrpContNo());
        lcgrpcont=lcGrpContService.findById(lcgrpinsured.getGrpContNo());
        return "deleteSuccess";
    }


    public String update(){
        String stanu=request.getParameter("orderid");
        System.out.println(stanu);
        String str[]=stanu.split(",");
        lcgrpinsured=lcGrpContInsuredService.findById(Integer.parseInt(str[0]));
        //lcgrpinsured.setGrpContNo(str[1]);
        lcgrpinsured.setName(str[2]);
        lcgrpinsured.setSex(str[3]);
        lcgrpinsured.setAge(Integer.parseInt(str[4]));
        lcgrpinsured.setIdnumber(str[5]);
        lcGrpContInsuredService.update(lcgrpinsured);
        grpinsuredlist = lcGrpContInsuredService.findBygrpContNo(str[1]);
        lcgrpcont=lcGrpContService.findById(str[1]);
        return "updateSuccess";
    }

    public String aupdate(){
        String stanu=request.getParameter("orderid");
        System.out.println(stanu);
        String str[]=stanu.split(",");
        lcgrpinsured=lcGrpContInsuredService.findById(Integer.parseInt(str[0]));
        //lcgrpinsured.setGrpContNo(str[1]);
        lcgrpinsured.setName(str[2]);
        lcgrpinsured.setSex(str[3]);
        lcgrpinsured.setAge(Integer.parseInt(str[4]));
        lcgrpinsured.setIdnumber(str[5]);
        lcGrpContInsuredService.update(lcgrpinsured);
        grpinsuredlist = lcGrpContInsuredService.findBygrpContNo(str[1]);
        lcgrpcont=lcGrpContService.findById(str[1]);
        return "aupdateSuccess";
    }


    public String grpinsured(){
        if(session.getAttribute("role")!=null && session.getAttribute("role").equals("2")){
            return "grpinsured";
        }
        return "grpNosign";
    }

    public String asearch(){
        String grpContNo=request.getParameter("grpContNo");
        lcgrpcont=lcGrpContService.findById(grpContNo);
        if(lcgrpcont!=null && lcgrpcont.getRemark().equals("待录入被保人")){
            grpinsuredlist=lcGrpContInsuredService.findBygrpContNo(grpContNo);
            System.out.println(lcgrpinsured.getGrpContNo());
            System.out.println(grpinsuredlist.get(0).getGrpContNo());
            System.out.println(grpinsuredlist.get(0).getName());
            return "asearchOk";
        }
        System.out.println("asearcherror");
        return "asearchError";
    }
}
