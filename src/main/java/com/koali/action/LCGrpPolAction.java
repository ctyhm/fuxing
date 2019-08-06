package com.koali.action;

import com.koali.pojo.Lcgrppol;
import com.koali.pojo.PageBean;
import com.koali.pojo.Salesman;
import com.koali.service.LCGrpPolService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:36
 */
public class LCGrpPolAction extends ActionSupport implements ModelDriven<Lcgrppol> {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    private Lcgrppol lcgrppol = new Lcgrppol();
    //注入模型驱动
    @Override
    public Lcgrppol getModel() {
        return lcgrppol;
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
    private LCGrpPolService lcGrpPolService;

    public void setLcGrpPolService(LCGrpPolService lcGrpPolService) {
        this.lcGrpPolService = lcGrpPolService;
    }

    //查询数据
    public String findAll(){
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            PageBean<Lcgrppol> pageBean = lcGrpPolService.findByPage(currPage);
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
        lcgrppol.setGrpPolNo(polNo);
        lcgrppol.setGrpName(grpName);
        lcgrppol.setKindCode(kindCode);
        lcgrppol.setRiskCode(riskCode);
        if(getRate!=""){
            BigDecimal bigDecimal=new BigDecimal(getRate);
            lcgrppol.setGetRate(bigDecimal);
        }
        if(expPremium!=""){
            BigDecimal bigDecimal2=new BigDecimal(expPremium);
            lcgrppol.setExpPremium(bigDecimal2);
        }
        if(expAmnt!=""){
            BigDecimal bigDecimal3=new BigDecimal(expAmnt);
            lcgrppol.setExpAmnt(bigDecimal3);
        }
        Lcgrppol existlcgrppol=lcGrpPolService.findById(polNo);
        if(existlcgrppol==null){
            lcGrpPolService.save(lcgrppol);
        }else {
            request.setAttribute("polmsg","险种已存在");
        }
        findAll();
        return "findAll";
    }

    // 修改险种信息
    public String update() {
        HttpServletRequest request=ServletActionContext.getRequest();
        String stanu=request.getParameter("lcgrppolid");
        System.out.println(stanu);
        String str[]=stanu.split(",");
        lcgrppol.setGrpPolNo(str[0]);
        if(str[1]!=""){
            lcgrppol.setGrpName(str[1]);
        }
        if(str[2]!=""){
            lcgrppol.setKindCode(str[2]);
        }
        if(str[3]!=""){
            lcgrppol.setRiskCode(str[3]);
        }
        if(str[4]!=""){
            BigDecimal bigDecimal=new BigDecimal(str[4]);
            lcgrppol.setGetRate(bigDecimal);
        }
        if(str[5]!=""){
            BigDecimal bigDecimal2=new BigDecimal(str[5]);
            lcgrppol.setExpPremium(bigDecimal2);
        }
        if(str[6]!=""){
            BigDecimal bigDecimal3=new BigDecimal(str[6]);
            lcgrppol.setExpAmnt(bigDecimal3);
        }
        lcGrpPolService.update(lcgrppol);
        return "updateSuccess";
    }
    // 删除团险
    public String delete() {
        HttpServletRequest request= ServletActionContext.getRequest();
        String lcgrppolid=request.getParameter("lcgrppolid");
        System.out.println("lcgrppolid");
        lcgrppol = lcGrpPolService.findById(lcgrppolid);
        lcGrpPolService.delete(lcgrppol);
        return "deleteSuccess";
    }

}
