package com.koali.action;

import com.koali.pojo.Lccont;
import com.koali.pojo.Lcpol;
import com.koali.service.LCContService;
import com.koali.service.LCPolService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 陈涛
 * @site www.sinosoft.com.cn
 * @create 2019-05-31-2019/5/31-15:34
 */
public class LCContAction extends ActionSupport {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    Lccont lccont = new Lccont();

    public Lccont getLccont() {
        return lccont;
    }

    public void setLccont(Lccont lccont) {
        this.lccont = lccont;
    }

    LCContService lcContService;

    public void setLcContService(LCContService lcContService) {
        this.lcContService = lcContService;
    }

    public String precont(){//投保管理
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            return "comein";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }



    public String newCont(){//系统端新建保单（新单申请）
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date=new Date();
        System.out.println(sdf.format(date));
        String newcont="0101"+sdf.format(date).toString();
        System.out.println(newcont);
        lccont.setContNo(newcont);
        lccont.setContState("待录入");
        lcContService.save(lccont);
        return "newCont";
    }

    public String searchCont(){//系统端查询保单号
        String contno=request.getParameter("contno");
        lccont = lcContService.findById(contno);
        if(lccont==null){
            return "searchError";
        }
        else if(lccont.getContState().equals("待录入")){
            return "searchOk";
        }else {
            return "searchError";
        }
    }

    Lcpol lcpol=new Lcpol();

    public Lcpol getLcpol() {
        return lcpol;
    }

    public void setLcpol(Lcpol lcpol) {
        this.lcpol = lcpol;
    }

    LCPolService lcPolService;

    public void setLcPolService(LCPolService lcPolService) {
        this.lcPolService = lcPolService;
    }

    List<Lcpol> perpollist=new ArrayList<Lcpol>();

    public List<Lcpol> getPerpollist() {
        return perpollist;
    }

    public void setPerpollist(List<Lcpol> perpollist) {
        this.perpollist = perpollist;
    }

    public String contInput(){//进入新单录入界面
        String conno=request.getParameter("contnumber");
        lccont=lcContService.findById(conno);
        perpollist=lcPolService.find();
        ActionContext.getContext().getValueStack().push(perpollist);
        return "contInput";
    }


    public String saveAppnt(){//保存投保人信息
        String contno=request.getParameter("contno");
        lccont=lcContService.load(contno);//加载表中原数据
        String polname=request.getParameter("polname").substring(0,6);
        lcpol=lcPolService.findById(polname);
        String appname=request.getParameter("appname");
        String IDtype=request.getParameter("IDtype");
        if(IDtype.equals("居民身份证")){
            IDtype="1";
        }else {
            IDtype="2";
        }
        String IDno=request.getParameter("IDno");
        String appsex=request.getParameter("appsex");
        String appntbirthday=request.getParameter("appntbirthday");
        //String appage=request.getParameter("appage");
        String s_province=request.getParameter("s_province");
        String s_city=request.getParameter("s_city");
        String s_county=request.getParameter("s_county");
        String appaddress=request.getParameter("appaddress");
        String appmailno=request.getParameter("appmailno");
        String appmerry=request.getParameter("appmerry");
        String appemail=request.getParameter("appemail");
        String appphone=request.getParameter("appphone");
        String healthdetail=request.getParameter("healthdetail");
        String financedetail=request.getParameter("financedetail");
        lccont.setPolNo(polname);
        lccont.setAmnt(lcpol.getExpAmnt());//保额
        lccont.setPrem(lcpol.getExpPremium());//保费
        lccont.setAppntName(appname);
        lccont.setAppntIdType(IDtype);
        lccont.setAppntIdNo(IDno);
        lccont.setAppntSex(appsex);
        if(appntbirthday!="") {
            java.util.Date sdate = null;
            try {
                sdate = sdf.parse(appntbirthday);           //string 转成date
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date stdate = new java.sql.Date(sdate.getTime());
            lccont.setAppntBirthday(stdate);
        }
        /*appaddress=s_province.concat(s_city.concat(s_county.concat(appaddress)));
        System.out.println(appaddress);*/
        if(!s_province.equals("请选择省份")){
            lccont.setAppntprovince(s_province);
            lccont.setAppntcity(s_city);
            lccont.setAppntcounty(s_county);
        }
        lccont.setAppntaddress(appaddress);
        lccont.setAppntmailno(appmailno);
        lccont.setAppntmerry(appmerry);
        lccont.setAppntemail(appemail);
        lccont.setAppntphone(appphone);
        lccont.setHealth(healthdetail);
        lccont.setFinancemsg(financedetail);
        lccont.setInputOpecode(session.getAttribute("sid").toString());
        lccont.setInputOperator(session.getAttribute("name").toString());
        lccont.setManageCom(session.getAttribute("comcode").toString());
        lcContService.update(lccont);
        return "appntSave";
    }

    public String saveInsured(){//保存被保人信息
        String contno=request.getParameter("contno");
        lccont=lcContService.load(contno);//加载表中原数据
        String insuredcb=request.getParameter("insuredcb");
        System.out.println("*************************"+insuredcb);
        if(insuredcb.equals("1")){
            System.out.println("????????????????????????????????"+insuredcb);
            System.out.println(lccont.getAppntName());
            lccont.setInsuredName(lccont.getAppntName());
            System.out.println(lccont.getInsuredName());
            lccont.setInsuredIdType(lccont.getAppntIdType());
            lccont.setInsuredIdNo(lccont.getAppntIdNo());
            lccont.setInsuredSex(lccont.getAppntSex());
            lccont.setInsuredBirthday(lccont.getAppntBirthday());
            lccont.setInsuredprovince(lccont.getAppntprovince());
            lccont.setInsuredcity(lccont.getAppntcity());
            lccont.setInsuredcounty(lccont.getAppntcounty());
            lccont.setInsuredaddress(lccont.getAppntaddress());
            lccont.setInsuredphone(lccont.getAppntphone());
            lccont.setInsuredmailno(lccont.getAppntmailno());
            lccont.setInsuredmerry(lccont.getAppntmerry());
            lccont.setInsuredemail(lccont.getAppntemail());
        }else {
            String insuredname=request.getParameter("insuredname");
            String insuredIDtype=request.getParameter("insuredIDtype");
            if(insuredIDtype.equals("居民身份证")){
                insuredIDtype="1";
            }else {
                insuredIDtype="2";
            }
            String insuredIDno=request.getParameter("insuredIDno");
            String insuredsex=request.getParameter("insuredsex");
            String insuredbirthday=request.getParameter("insuredbirthday");
            //String insuredage=request.getParameter("insuredage");
            String i_province=request.getParameter("i_province");
            String i_city=request.getParameter("i_city");
            String i_county=request.getParameter("i_county");
            String insuredaddress=request.getParameter("insuredaddress");
            String insuredmailno=request.getParameter("insuredmailno");
            String insuredmerry=request.getParameter("insuredmerry");
            String insuredphone=request.getParameter("insuredphone");
            String insuredemail=request.getParameter("insuredemail");
            lccont.setInsuredName(insuredname);
            lccont.setInsuredIdType(insuredIDtype);
            lccont.setInsuredIdNo(insuredIDno);
            lccont.setInsuredSex(insuredsex);
            if(insuredbirthday!="") {
                java.util.Date sdate = null;
                try {
                    sdate = sdf.parse(insuredbirthday);           //string 转成date
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                java.sql.Date stdate = new java.sql.Date(sdate.getTime());
                lccont.setInsuredBirthday(stdate);
            }
            //insuredaddress=i_province.concat(i_city.concat(i_county.concat(insuredaddress)));
            if(!i_province.equals("请选择省份")){
                lccont.setInsuredprovince(i_province);
                lccont.setInsuredcity(i_city);
                lccont.setInsuredcounty(i_county);
            }
            lccont.setInsuredaddress(insuredaddress);
            lccont.setInsuredmailno(insuredmailno);
            lccont.setInsuredmerry(insuredmerry);
            lccont.setInsuredphone(insuredphone);
            lccont.setInsuredemail(insuredemail);
        }
        String insuredwork=request.getParameter("insuredwork").substring(0,1);
        String insuredpay=request.getParameter("insuredpay");
        lccont.setInsuredwork(Integer.parseInt(insuredwork));
        lccont.setPayMode(insuredpay);
        lcContService.update(lccont);
        return "insuredSave";
    }

    public String saveBenefit(){//保存受益人信息
        String contno=request.getParameter("contno");
        lccont=lcContService.load(contno);//加载表中原数据
        String benefitcb=request.getParameter("benefitcb");
        if(benefitcb.equals("2")){
            lccont.setBenefittype("本人");
            lccont.setBenefitName(lccont.getAppntName());
            lccont.setBenefitIdType(lccont.getAppntIdType());
            lccont.setBenefitIdNo(lccont.getAppntIdNo());
            lccont.setBenefitSex(lccont.getAppntSex());
            lccont.setBenefitBirthday(lccont.getAppntBirthday());
            lccont.setBenefitphone(lccont.getAppntphone());
            lccont.setBenefitemail(lccont.getAppntemail());
            Date date=new Date();
            System.out.println(date);
            java.sql.Date stdate = new java.sql.Date(date.getTime());
            lccont.setInputDate(stdate);
            lccont.setContState("待复核");
        }else {
            String benefitname=request.getParameter("benefitname");
            String benefitIDtype=request.getParameter("benefitIDtype");
            if(benefitIDtype.equals("居民身份证")){
                benefitIDtype="1";
            }else {
                benefitIDtype="2";
            }
            String benefitIDno=request.getParameter("benefitIDno");
            String benefitsex=request.getParameter("benefitsex");
            String benefitbirthday=request.getParameter("benefitbirthday");
            //String insuredage=request.getParameter("insuredage");
            //String benefitkind=request.getParameter("benefitkind");
            String benefitconnect=request.getParameter("benefitconnect");
            String benefitphone=request.getParameter("benefitphone");
            String benefitemail=request.getParameter("benefitemail");
            lccont.setBenefitName(benefitname);
            lccont.setBenefitIdType(benefitIDtype);
            lccont.setBenefitIdNo(benefitIDno);
            lccont.setBenefitSex(benefitsex);
            if(benefitbirthday!="") {
                java.util.Date sdate = null;
                try {
                    sdate = sdf.parse(benefitbirthday);           //string 转成date
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                java.sql.Date stdate = new java.sql.Date(sdate.getTime());
                lccont.setBenefitBirthday(stdate);
            }
            Date date=new Date();
            System.out.println(date);
            java.sql.Date stdate = new java.sql.Date(date.getTime());
            lccont.setInputDate(stdate);
            lccont.setContState("待复核");
            lccont.setBenefittype(benefitconnect);
            lccont.setBenefitphone(benefitphone);
            lccont.setBenefitemail(benefitemail);
        }
        lcContService.update(lccont);
        return "benefitSave";
    }

    public String asearchcomein() {//用户端保单查询进入界面
        return "asearchcomein";
    }

    public String asearch(){//用户端保单查询
        String contno=request.getParameter("contno");
        lccont=lcContService.findById(contno);
        if(lccont!=null && lccont.getContState().equals("已签发")){
            return "asearch";
        }
        return "asearchError";
    }


    List<Lccont> contlist=new ArrayList<Lccont>();

    public List<Lccont> getContlist() {
        return contlist;
    }

    public void setContlist(List<Lccont> contlist) {
        this.contlist = contlist;
    }

    public String bcheck(){//核保管理界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcContService.findByCom(session.getAttribute("comcode").toString(),"待复核");
            return "bcheck";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }


    public String checkapply(){//进入保单复核界面，进行复核
        String contid=request.getParameter("contid");
        lccont=lcContService.findById(contid);
        if(lccont.getInputOpecode().equals(session.getAttribute("sid").toString())){
            return "limit";
        }else {

            return "applyOk";
        }
    }


    public String check(){//保单复核
        String contno=request.getParameter("contno");
        String contCheck=request.getParameter("contCheck");
        String Checkdetail=request.getParameter("Checkdetail");
        if(contCheck.equals("审核通过")){
            lccont=lcContService.findById(contno);
            lccont.setContState("待受理");
            lccont.setUwOperatorcode(session.getAttribute("sid").toString());
            lccont.setUwOperator(session.getAttribute("name").toString());
            Date date=new Date();
            java.sql.Date stdate = new java.sql.Date(date.getTime());
            lccont.setUwDate(stdate);
            lcContService.update(lccont);
            return "checkOk";
        }
        else {
            lccont=lcContService.findById(contno);
            lccont.setContState("待核保订正");
            lccont.setRemark(Checkdetail);
            lcContService.update(lccont);
            return "checkOk";
        }
    }


    public String bcorrect(){//核保订正界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcContService.findByCom(session.getAttribute("comcode").toString(),"待核保订正");
            return "bcorrect";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String Correctapply(){//进入核保订正界面，进行保单订正
        String contid=request.getParameter("contid");
        lccont=lcContService.findById(contid);
        return "CorrectapplyOk";
    }

    public String Correctsubmit(){//订正完成，提交结果
        String contno=request.getParameter("contno");
        lccont=lcContService.findById(contno);
        lccont.setContState("待复核");
        lccont.setRemark(null);
        lcContService.update(lccont);
        return "Correctsubmit";
    }


    public String accept(){//保单受理界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcContService.findByCom(session.getAttribute("comcode").toString(),"待受理");
            return "accept";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String acceptapply(){//进入个单受理界面，进行保单受理
        String contid=request.getParameter("contid");
        lccont=lcContService.findById(contid);
        return "acceptapplyOk";
    }

    public String acceptSubmit(){//保单受理
        String contno=request.getParameter("contno");
        //String prem=request.getParameter("prem");
        String payflag=request.getParameter("payflag");
        lccont=lcContService.findById(contno);
        lccont.setContState("待确认");
        //BigDecimal bigDecimal=new BigDecimal(prem);
        //lccont.setPrem(bigDecimal);
        //if(payflag!=""){
            lccont.setAppntNo(payflag);
            //lccont.setPayflag("1");
        //}
        lcContService.update(lccont);
        return "acceptSubmit";
    }


    public String bpayok(){//到账确认界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcContService.findByCom(session.getAttribute("comcode").toString(),"待确认");
            return "bpayok";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }


    public String Paysubmit(){//进行到账确认处理
        String contid=request.getParameter("contid");
        lccont=lcContService.findById(contid);
        //lccont.setPayflag("2");
        lccont.setContState("待签发");
        lcContService.update(lccont);
        return "Paysubmit";
    }


    public String bpolsign(){//个单签单界面
        if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="4"){
            contlist=lcContService.findByCom(session.getAttribute("comcode").toString(),"待签发");
            return "bpolsign";
        }else if(session.getAttribute("sid")!=null && session.getAttribute("srole")=="3"){
            return "limit";
        }
        else {
            return "noAdmin";
        }
    }

    public String Signapply(){//进入个单签单界面，进行保单签发
        String contid=request.getParameter("contid");
        lccont=lcContService.findById(contid);
        return "SignapplyOk";
    }


    public String signSubmit(){//保单签发
        String contno=request.getParameter("contno");
        lccont=lcContService.findById(contno);
        lccont.setContState("已签发");
        lcContService.update(lccont);
        return "signSubmit";
    }


    public String bstatus(){//进入个单状态查询界面
        return "bstatus";
    }

    public String searchState(){//进行个单查询
        String contno=request.getParameter("contno");
        lccont = lcContService.findById(contno);
        if(lccont==null){
            return "noResult";
        }
        return "searchState";
    }
}
