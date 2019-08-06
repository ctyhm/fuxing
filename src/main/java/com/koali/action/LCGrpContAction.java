package com.koali.action;

import com.koali.pojo.Lcgrpcont;
import com.koali.pojo.Lcgrpinsured;
import com.koali.pojo.Lcgrppol;
import com.koali.pojo.Lcpol;
import com.koali.service.LCGrpContInsuredService;
import com.koali.service.LCGrpContService;
import com.koali.service.LCGrpPolService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:35
 */
public class LCGrpContAction extends ActionSupport {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

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


    LCGrpContInsuredService lcGrpContInsuredService;

    public void setLcGrpContInsuredService(LCGrpContInsuredService lcGrpContInsuredService) {
        this.lcGrpContInsuredService = lcGrpContInsuredService;
    }

    public String precont(){
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            return "comein";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String newCont(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date=new Date();
        System.out.println(sdf.format(date));
        String newcont="0201"+sdf.format(date).toString();
        System.out.println(newcont);
        lcgrpcont.setGrpContNo(newcont);
        lcgrpcont.setRemark("待录入");
        lcGrpContService.save(lcgrpcont);
        return "newCont";
    }

    public String searchCont(){
        String contno=request.getParameter("contno");
        lcgrpcont = lcGrpContService.findById(contno);
        if(lcgrpcont==null){
            return "searchError";
        }else if(lcgrpcont.getRemark().equals("待录入") || lcgrpcont.getRemark().equals("待录入被保人")){
            return "searchOk";
        }else {
            return "searchError";
        }
    }

    LCGrpPolService lcGrpPolService;

    public void setLcGrpPolService(LCGrpPolService lcGrpPolService) {
        this.lcGrpPolService = lcGrpPolService;
    }

    List<Lcgrppol> perpollist=new ArrayList<Lcgrppol>();

    public List<Lcgrppol> getPerpollist() {
        return perpollist;
    }

    public void setPerpollist(List<Lcgrppol> perpollist) {
        this.perpollist = perpollist;
    }


    List<Lcgrpinsured> grpinsuredlist=new ArrayList<Lcgrpinsured>();

    public List<Lcgrpinsured> getGrpinsuredlist() {
        return grpinsuredlist;
    }

    public void setGrpinsuredlist(List<Lcgrpinsured> grpinsuredlist) {
        this.grpinsuredlist = grpinsuredlist;
    }

    public String contInput(){
        String conno=request.getParameter("contnumber");
        lcgrpcont=lcGrpContService.findById(conno);
        perpollist=lcGrpPolService.find();
        grpinsuredlist=lcGrpContInsuredService.findBygrpContNo(lcgrpcont.getGrpContNo());
        ActionContext.getContext().getValueStack().push(perpollist);
        return "contInput";
    }

    Lcgrppol lcgrppol=new Lcgrppol();

    public Lcgrppol getLcgrppol() {
        return lcgrppol;
    }

    public void setLcgrppol(Lcgrppol lcgrppol) {
        this.lcgrppol = lcgrppol;
    }

    public String saveAppnt(){//保存投保人信息
        String contno=request.getParameter("contno");
        lcgrpcont=lcGrpContService.findById(contno);//加载表中原数据
        String polname=request.getParameter("polname").substring(0,6);
        lcgrppol=lcGrpPolService.findById(polname);
        String appntname=request.getParameter("appntname");
        String grpName=request.getParameter("grpName");
        String corporation=request.getParameter("corporation");
        String grpNature=request.getParameter("grpNature");
        String rgtMoney=request.getParameter("rgtMoney");
        String asset=request.getParameter("asset");
        String mainBussiness=request.getParameter("mainBussiness");
        String businessType=request.getParameter("businessType");
        String payMode=request.getParameter("payMode");
        String phone=request.getParameter("phone");
        String fax=request.getParameter("fax");
        String insuredType=request.getParameter("insuredType");
        String peoples=request.getParameter("peoples");
        String eMail=request.getParameter("eMail");
        lcgrpcont.setGrppolNo(polname);
        lcgrpcont.setAmnt(lcgrppol.getExpAmnt());
        lcgrpcont.setPrem(lcgrppol.getExpPremium());
        lcgrpcont.setAppntname(appntname);
        lcgrpcont.setGrpName(grpName);
        lcgrpcont.setCorporation(corporation);
        lcgrpcont.setGrpNature(grpNature);
        BigDecimal rgtMoneyDecimal=new BigDecimal(rgtMoney);
        lcgrpcont.setRgtMoney(rgtMoneyDecimal);
        BigDecimal assetDecimal=new BigDecimal(asset);
        lcgrpcont.setAsset(assetDecimal);
        lcgrpcont.setMainBussiness(mainBussiness);
        lcgrpcont.setBusinessType(businessType);
        lcgrpcont.setPayMode(payMode);
        lcgrpcont.setPhone(phone);
        lcgrpcont.setFax(fax);
        lcgrpcont.setInsuredType(insuredType);
        lcgrpcont.setPeoples(Integer.parseInt(peoples));
        lcgrpcont.seteMail(eMail);
        lcgrpcont.setManageCom(session.getAttribute("comcode").toString());
        lcgrpcont.setInputOperator(session.getAttribute("sid").toString());
        if(insuredType.equals("实体被保人")){
            lcgrpcont.setRemark("待录入被保人");
        }
        lcGrpContService.update(lcgrpcont);
        return "appntSave";
    }


    public String submit(){//新单录入完毕
        String grpContNo=request.getParameter("grpContNo");
        lcgrpcont=lcGrpContService.findById(grpContNo);
        lcgrpcont.setRemark("新单待复核");
        lcGrpContService.update(lcgrpcont);
        return "submit";
    }

    List<Lcgrpcont> contlist=new ArrayList<Lcgrpcont>();

    public List<Lcgrpcont> getContlist() {
        return contlist;
    }

    public void setContlist(List<Lcgrpcont> contlist) {
        this.contlist = contlist;
    }

    public String bGrpcheck(){//新单复核管理，进入待复核新单界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcGrpContService.findByCom(session.getAttribute("comcode").toString(),"新单待复核");
            return "bgrpcheck";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }


    public String checkapply(){//新单复核申请
        String contid=request.getParameter("contid");
        lcgrpcont=lcGrpContService.findById(contid);
        if(lcgrpcont.getInputOperator().equals(session.getAttribute("sid").toString())){
            return "limit";
        }else {

            return "applyOk";
        }
    }


    public String check(){//新单复核
        String contno=request.getParameter("contno");
        String contCheck=request.getParameter("contCheck");
        String Checkdetail=request.getParameter("Checkdetail");
        if(contCheck.equals("审核通过")){
            lcgrpcont=lcGrpContService.findById(contno);
            lcgrpcont.setRemark("待受理");
            lcGrpContService.update(lcgrpcont);
            return "checkOk";
        }
        else {
            lcgrpcont=lcGrpContService.findById(contno);
            lcgrpcont.setRemark("待核保订正");
            lcgrpcont.setSpecFlag(Checkdetail);
            lcGrpContService.update(lcgrpcont);
            return "checkOk";
        }
    }


    public String bGrpcorrect(){//团单核保订正管理，进入核保订正界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcGrpContService.findByCom(session.getAttribute("comcode").toString(),"待核保订正");
            return "bGrpcorrect";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String Correctapply(){//团单核保订正申请
        String contid=request.getParameter("contid");
        lcgrpcont=lcGrpContService.findById(contid);
        return "CorrectapplyOk";
    }

    public String Correctsubmit(){//订正完成，提交结果
        String contno=request.getParameter("contno");
        lcgrpcont=lcGrpContService.findById(contno);
        lcgrpcont.setRemark("新单待复核");
        lcgrpcont.setSpecFlag(null);
        lcGrpContService.update(lcgrpcont);
        return "Correctsubmit";
    }


    public String Grpaccept(){//团单新单受理管理，进入团单受理界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcGrpContService.findByCom(session.getAttribute("comcode").toString(),"待受理");
            return "Grpaccept";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String acceptapply(){//团单受理申请
        String contid=request.getParameter("contid");
        lcgrpcont=lcGrpContService.findById(contid);
        return "acceptapplyOk";
    }

    public String acceptSubmit(){//进入受理界面，进行保单受理
        String contno=request.getParameter("contno");
        //String prem=request.getParameter("prem");
        String payflag=request.getParameter("payflag");
        lcgrpcont=lcGrpContService.findById(contno);
        lcgrpcont.setRemark("待确认");
        //BigDecimal bigDecimal=new BigDecimal(prem);
        //lcgrpcont.setPrem(bigDecimal);
        //if(payflag!=""){
            lcgrpcont.setAppntNo(payflag);
            //lcgrpcont.setPayflag("1");
        //}
        lcGrpContService.update(lcgrpcont);
        return "acceptSubmit";
    }



    public String bGrppayok(){//团单到账确认界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcGrpContService.findByCom(session.getAttribute("comcode").toString(),"待确认");
            return "bGrppayok";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String GrpPaysubmit(){//进行到账确认处理
        String contid=request.getParameter("contid");
        lcgrpcont=lcGrpContService.findById(contid);
        //lccont.setPayflag("2");
        lcgrpcont.setRemark("待签发");
        lcGrpContService.update(lcgrpcont);
        return "GrpPaysubmit";
    }


    public String bGrppolsign(){//团单新单受理管理，进入团单受理界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcGrpContService.findByCom(session.getAttribute("comcode").toString(),"待签发");
            return "bGrppolsign";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }


    public String GrpSignapply(){//团单受理申请
        String contid=request.getParameter("contid");
        lcgrpcont=lcGrpContService.findById(contid);
        return "GrpSignapplyOk";
    }


    public String grpSignSubmit(){//进入受理界面，进行保单受理
        String contno=request.getParameter("contno");
        lcgrpcont=lcGrpContService.findById(contno);
        lcgrpcont.setRemark("已签发");
        lcGrpContService.update(lcgrpcont);
        return "grpSignSubmit";
    }


    public String bGrpstatus(){
        return "bGrpstatus";
    }
    public String searchState(){//进行个单查询
        String contno=request.getParameter("contno");
        lcgrpcont = lcGrpContService.findById(contno);
        if(lcgrpcont==null){
            return "noResult";
        }
        return "searchState";
    }
}
