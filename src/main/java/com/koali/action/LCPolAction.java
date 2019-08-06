package com.koali.action;

import com.koali.pojo.Lcpol;
import com.koali.pojo.PageBean;
import com.koali.service.LCPolService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:35
 */
public class LCPolAction extends ActionSupport implements ModelDriven<Lcpol> {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    private Lcpol lcpol = new Lcpol();
    //注入模型驱动
    @Override
    public Lcpol getModel() {
        return lcpol;
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
    private LCPolService lcPolService;

    public void setLcPolService(LCPolService lcPolService) {
        this.lcPolService = lcPolService;
    }

    //查询数据
    public String findAll(){
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            PageBean<Lcpol> pageBean = lcPolService.findByPage(currPage);
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

    //////////////////////////////////////////////////////////////////////////////////////////////////

    //添加险种信息
    public String save(){
        HttpServletRequest request= ServletActionContext.getRequest();
        String polNo=request.getParameter("polNo");
        String grpName=request.getParameter("grpName");
        String kindCode=request.getParameter("kindCode");
        String riskCode=request.getParameter("riskCode");
        String getRate=request.getParameter("getRate");
        String expPremium=request.getParameter("expPremium");
        String expAmnt=request.getParameter("expAmnt");
        lcpol.setPolNo(polNo);
        lcpol.setGrpName(grpName);
        lcpol.setKindCode(kindCode);
        lcpol.setRiskCode(riskCode);
        if(getRate!=""){
            BigDecimal bigDecimal=new BigDecimal(getRate);
            lcpol.setGetRate(bigDecimal);
        }
        if(expPremium!=""){
            BigDecimal bigDecimal2=new BigDecimal(expPremium);
            lcpol.setExpPremium(bigDecimal2);
        }
        if(expAmnt!=""){
            BigDecimal bigDecimal3=new BigDecimal(expAmnt);
            lcpol.setExpAmnt(bigDecimal3);
        }
        Lcpol existPol=lcPolService.findById(polNo);
        if(existPol==null){
            lcPolService.save(lcpol);
        }else {
            request.setAttribute("polmsg","险种已存在");
        }
        findAll();
        return "findAll";
    }

    // 修改险种信息
    public String update() {
        HttpServletRequest request=ServletActionContext.getRequest();
        String stanu=request.getParameter("lcpolid");
        System.out.println(stanu);
        String str[]=stanu.split(",");
        lcpol.setPolNo(str[0]);
        if(str[1]!=""){
            lcpol.setGrpName(str[1]);
        }
        if(str[2]!=""){
            lcpol.setKindCode(str[2]);
        }
        if(str[3]!=""){
            lcpol.setRiskCode(str[3]);
        }
        if(str[4]!=""){
            BigDecimal bigDecimal=new BigDecimal(str[4]);
            lcpol.setGetRate(bigDecimal);
        }
        if(str[5]!=""){
            BigDecimal bigDecimal2=new BigDecimal(str[5]);
            lcpol.setExpPremium(bigDecimal2);
        }
        if(str[6]!=""){
            BigDecimal bigDecimal3=new BigDecimal(str[6]);
            lcpol.setExpAmnt(bigDecimal3);
        }
        lcPolService.update(lcpol);
        return "updateSuccess";
    }
    // 删除个险信息
    public String delete() {
        HttpServletRequest request= ServletActionContext.getRequest();
        String lcpolid=request.getParameter("lcpolid");
        System.out.println("lcpolid");
        lcpol = lcPolService.findById(lcpolid);
        lcPolService.delete(lcpol);
        return "deleteSuccess";
    }

}
