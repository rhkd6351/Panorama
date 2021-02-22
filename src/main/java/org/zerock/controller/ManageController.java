package org.zerock.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.UserVO;
import org.zerock.service.UserService;
import org.zerock.service.UserServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/manage/*")
@AllArgsConstructor
public class ManageController {
    private UserService service;

    @GetMapping("/")
    public String manageLogin(){
        //매니저 로그인 작업
        return "/manage/user";
    }

    @GetMapping("/user")
    public String manage_user(Model model){
        List<UserVO> list = service.getList();
        model.addAttribute("userList", list);
        log.info(list);
        return "/manage/manage_user";
    }


}