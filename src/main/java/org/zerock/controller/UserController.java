package org.zerock.controller;


import com.sun.deploy.net.HttpResponse;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BrandVO;
import org.zerock.domain.MerchanVO;
import org.zerock.domain.OrderVO;
import org.zerock.domain.UserVO;
import org.zerock.service.*;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
    private UserService usrService;
    private BrandService brService;
    private OrderService orService;
    private MerchanService mrService;

    private HttpSession session;

    @GetMapping("/loginCheck")
    public String login(Model model, String login){
        if(session.getAttribute("userInfo") == null) {
            if(login != null)
                model.addAttribute("login", false);
            return "/login";
        }
        else
            return "redirect:/user/myInfo";
    }

    @GetMapping("/myInfo")
    public String myInfo(Model model){
        UserVO loginVO = (UserVO)session.getAttribute("userInfo");
        if(loginVO.getAuth() == 0){
            return "/manage/user";
        }else if(loginVO.getAuth() == 1){
            return "/myInfo_user";
        }else{
            return "redirect:/user/myInfo/seller";
        }
    }

    @GetMapping("/myInfo/seller")
    public String sellerInfo(Model model){
        UserVO loginVO = (UserVO)session.getAttribute("userInfo");
        List<BrandVO> brList = brService.getListAccordingToUserId(loginVO.getUserId());
        List<OrderVO> orList = orService.getList();
        ArrayList<OrderVO> myOrderList = new ArrayList();

        int sum = 0;
        for(OrderVO vo : orList){
            if(mrService.get(vo.getMerchanOid()).getUserId().equals(loginVO.getUserId())){
                myOrderList.add(vo);
                sum += vo.getCount() * mrService.get(vo.getMerchanOid()).getPrice();
            }
        }

        model.addAttribute("brList",brList);
        model.addAttribute("myOrderList",myOrderList);
        model.addAttribute("total",sum);
        return "/myInfo_seller";
    }

    @GetMapping("/myInfo/brand")
    public String sellerBrand(int brandOid, Model model){
        BrandVO brandvo = brService.get(brandOid);
        ArrayList<OrderVO> brOrderList = new ArrayList();
        List<OrderVO> orList = orService.getList();
        List<MerchanVO> mrList = mrService.getListAccordingToBrandOid(brandOid);

        int sum = 0;
        for(OrderVO vo : orList){
            if(mrService.get(vo.getMerchanOid()).getBrandOid() == brandvo.getBrandOid()){
                brOrderList.add(vo);
                sum += vo.getCount() * mrService.get(vo.getMerchanOid()).getPrice();
            }
        }


        model.addAttribute("brandvo", brandvo);
        model.addAttribute("brOrderList", brOrderList);
        model.addAttribute("sum", sum);
        model.addAttribute("mrList", mrList);

        return "/myInfo_seller_brand";
    }

    @PostMapping("/brand/addMerchan")
    public String addMerchan(MerchanVO vo, MultipartFile img, Model model){

        vo.setUserId(((UserVO)(session.getAttribute("userInfo"))).getUserId());
        String uploadFolder = "/Users/im-yegwang/IdeaProjects/toySungYe/web/resources/img/goods";
        String uploadFolder2 = "/Users/im-yegwang/IdeaProjects/toySungYe/target/controller-1.0.0-BUILD-SNAPSHOT/resources/img/goods";
        log.info(img);
        File saveFile = new File(uploadFolder, vo.getName()+".png");
        File saveFile2 = new File(uploadFolder2, vo.getName()+".png");
        try{
            img.transferTo(saveFile);
            img.transferTo(saveFile2);
        }catch(Exception e){
            log.error(e.getMessage());
        }
        mrService.register(vo);
        return "redirect:/user/myInfo/seller";
    }

    @ResponseBody
    @GetMapping("/brand/delMerchan")
    public String delMerchan(int merchanOid, int brandOid){
        mrService.modifyBrand(merchanOid,0);
        return "<script>alert('delete success');location.href='/user/myInfo/brand?brandOid=" + brandOid + "';</script>";
    }

    @GetMapping("/list")
    public void list(Model model){
        List<UserVO> list = usrService.getList();
        model.addAttribute("list",list);

        log.info(list);
    }

    @GetMapping("/register")
    public String register(){
        return "/register";
    }

    @ResponseBody
    @PostMapping("/register")
    public String register(Model model,UserVO vo){
        try{
            usrService.register(vo);
        }catch(UserServiceImpl.FoolException e){
            return "<script>alert('duplicated id');history.back();</script>";
        }
        return "<script>alert('register success');location.href='/user/loginCheck';</script>";
    }

    @PostMapping("/remove")
    public String delete(String userId, Model model){
        if(usrService.remove(userId)){
            model.addAttribute("delete","success");
            return "redirect:/user/list";
        }else
            model.addAttribute("delete","fail");
        return "redirect:/user/list";
    }

    @PostMapping("modify")
    public String modify(UserVO vo, Model model){
        if(usrService.modify(vo)){
            model.addAttribute("modify","success");
            return "redirect:/user/list";
        }else
            model.addAttribute("modify","fail");
        return "redirect:/user/list";
    }

    @PostMapping("get")
    public void get(Model model, String userId){
        UserVO vo = usrService.get(userId);
        model.addAttribute("get", vo);
        log.info(vo);
    }

    @PostMapping("login")
    public String login(Model model, String userId, String userPw){
        UserVO vo = usrService.login(userId,userPw);
        if(vo != null){
            session.setAttribute("userInfo", vo);
            return "redirect:/";
        }else{
            return "redirect:/user/loginCheck?login=false";
        }
    }

    @GetMapping("logout")
    public String login(){
        session.removeAttribute("userInfo");
        return "redirect:/";
    }
}