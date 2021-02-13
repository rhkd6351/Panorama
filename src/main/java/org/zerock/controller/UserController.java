package org.zerock.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.UserVO;
import org.zerock.service.UserService;

import java.util.List;

@Log4j
@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
    private UserService service;

    @GetMapping("/list")
    public void list(Model model){
        List<UserVO> list = service.getList();
        model.addAttribute("list",list);
        log.info(list);
    }

    @GetMapping("/register")
    public String register(){
        return "user/register";
    }

    @PostMapping("/register")
    public String register(UserVO vo, RedirectAttributes rttr){
        service.register(vo);
        return "redirect:/user/list";
    }

}
