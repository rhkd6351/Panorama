package org.zerock.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.BrandVO;
import org.zerock.domain.MerchanVO;
import org.zerock.domain.UserVO;
import org.zerock.service.BrandService;
import org.zerock.service.MerchanService;
import org.zerock.service.UserService;
import org.zerock.service.UserServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/manage/*")
@AllArgsConstructor
public class ManageController {
    private UserService userSer;
    private MerchanService merchanSer;
    private BrandService brandSer;

    @GetMapping("/")
    public String manageLogin(){
        //매니저 로그인 작업
        return "/manage/user";
    }

    @GetMapping("/user")
    public String listUser(Model model){
        List<UserVO> list = userSer.getList();
        model.addAttribute("userList", list);
        log.info(list);
        return "/manage/manage_user";
    }
    @GetMapping("/merchan")
    public String listMerchan(Model model){
        List<MerchanVO> list = merchanSer.getList();
        model.addAttribute("merchanList",list);
        return "/manage/manage_merchan";
    }

    @GetMapping("/brand")
    public String listBrand(Model model){
        List<BrandVO> list = brandSer.getList();
        model.addAttribute("brandList",list);
        return "/manage/manage_brand";
    }

    @GetMapping("/user/modify")
    public String modifyUser(Model model, String userId){
        UserVO vo = userSer.get(userId);
        model.addAttribute("user", vo);
        return "/manage/manage_user_modify";
    }

    @ResponseBody
    @PostMapping("/user/modify")
    public String modifyUser(UserVO vo){
        log.info(vo);
        userSer.modify(vo);
        return "<script>alert('modify success');location.href='/manage/user';</script>";
    }
    @ResponseBody
    @GetMapping("/user/delete")
    public String deleteUser(String userId){
        userSer.remove(userId);
        return "<script>alert('delete success');location.href='/manage/user';</script>";
    }



    @GetMapping("/merchan/modify")
    public String modifyMerchan(Model model, int merchanOid){
        MerchanVO vo = merchanSer.get(merchanOid);
        model.addAttribute("merchan", vo);
        return "/manage/manage_merchan_modify";
    }

    @ResponseBody
    @PostMapping("/merchan/modify")
    public String modifyMerchan(MerchanVO vo){
        log.info(vo);
        merchanSer.modify(vo);
        return "<script>alert('modify success');location.href='/manage/merchan';</script>";
    }
    @ResponseBody
    @GetMapping("/merchan/delete")
    public String deleteMerchan(int merchanOid){
        merchanSer.remove(merchanOid);
        return "<script>alert('delete success');location.href='/manage/merchan';</script>";
    }

    @GetMapping("/brand/modify")
    public String modifyBrand(Model model, int brandOid){
        BrandVO vo = brandSer.get(brandOid);
        model.addAttribute("brand", vo);
        return "/manage/manage_brand_modify";
    }

    @ResponseBody
    @PostMapping("/brand/modify")
    public String modifyBrand(BrandVO vo){
        log.info(vo);
        brandSer.modify(vo);
        return "<script>alert('modify success');location.href='/manage/brand';</script>";
    }
    @ResponseBody
    @GetMapping("/brand/delete")
    public String deleteBrand(int brandOid){
        brandSer.remove(brandOid);
        return "<script>alert('delete success');location.href='/manage/brand';</script>";
    }
}