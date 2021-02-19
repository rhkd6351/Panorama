package org.zerock.controller;


import com.sun.deploy.net.HttpResponse;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.UserVO;
import org.zerock.service.UserService;
import org.springframework.ui.Model;
import org.zerock.service.UserServiceImpl;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/user/*")
@AllArgsConstructor
public class UserController {
    private UserService service;
    private HttpSession session;

    @GetMapping("/loginCheck")
    public String login(Model model, String login){
        if(session.getAttribute("userInfo") == null) {
            if(login != null)
                model.addAttribute("login", false);
            return "/login";
        }
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
        return "/register";
    }

    @ResponseBody
    @PostMapping("/register")
    public String register(Model model,UserVO vo){
        try{
            service.register(vo);
        }catch(UserServiceImpl.FoolException e){
            return "<script>alert('duplicated id');history.back();</script>";
        }
        return "<script>alert('register success');location.href='/user/loginCheck';</script>";
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
    public void get(Model model, String userId){
        UserVO vo = service.get(userId);
        model.addAttribute("get", vo);
        log.info(vo);
    }

    @PostMapping("login")
    public String login(Model model, String userId, String userPw){
        UserVO vo = service.login(userId,userPw);
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