package org.zerock.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.UserVO;
import org.zerock.service.UserService;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
    private UserService service;
    private HttpSession session;

    @GetMapping("/loginCheck")
    public String login(){
        if(session.getAttribute("userId") == null)
            return "/login";
        else
            return "/myInfo";
    }

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

    @PostMapping("/remove")
    public String delete(int oid, Model model){
        if(service.remove(oid)){
            model.addAttribute("delete","success");
            return "redirect:/user/list";
        }else
            model.addAttribute("delete","fail");
        return "redirect:/user/list";
    }

    @PostMapping("modify")
    public String modify(UserVO vo, Model model){
        if(service.modify(vo)){
            model.addAttribute("modify","success");
            return "redirect:/user/list";
        }else
            model.addAttribute("modify","fail");
        return "redirect:/user/list";
    }

    @PostMapping("get")
    public void get(Model model, int oid){
        UserVO vo = service.get(oid);
        model.addAttribute("get", vo);
        log.info(vo);
    }
}