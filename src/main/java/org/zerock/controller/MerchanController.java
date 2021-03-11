package org.zerock.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.BrandVO;
import org.zerock.domain.MerchanVO;
import org.zerock.domain.OrderVO;
import org.zerock.domain.UserVO;
import org.zerock.service.*;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/merchan/*")
@AllArgsConstructor
public class MerchanController {
    private UserService usrService;
    private BrandService brService;
    private OrderService orService;
    private MerchanService mrService;
    private HttpSession session;

    @GetMapping("/info")
    public String merchanInfo(Model model, int merchanOid){
        MerchanVO selectedMerchan = mrService.get(merchanOid);
        BrandVO selectedMerchanBrand = brService.get(selectedMerchan.getBrandOid());
        List<MerchanVO> merchanList = mrService.getList();
        merchanList.remove(selectedMerchan);
        merchanList.removeIf(i -> i.getBrandOid() == 0);

        List<BrandVO> brandList = new ArrayList<>();

        for(MerchanVO vo : merchanList){
            BrandVO brand = brService.get(vo.getBrandOid());
            brandList.add(brand);
        }

        model.addAttribute("merchan",selectedMerchan);
        model.addAttribute("brand",selectedMerchanBrand);
        model.addAttribute("merchanList",merchanList);
        model.addAttribute("brandList",brandList);
        return "/product_info";
    }

    @GetMapping("buy")
    public String merchanBuy(String size, int quantity, Model model){
        if(session.getAttribute("userInfo") == null)
            return "redirect:/user/loginCheck";

        model.addAttribute("demand",size);
        model.addAttribute("count",quantity);
        return "redirect:/merchan/pay";
    }
}













