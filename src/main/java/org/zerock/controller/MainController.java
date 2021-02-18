package org.zerock.controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.MerchanVO;
import org.zerock.service.MerchanService;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Handles requests for the application home page.
 */
@Controller
@AllArgsConstructor
@Log4j
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    private MerchanService merchanService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate );

        List<MerchanVO> newlist = merchanService.getNewList();
        List<MerchanVO> logoList = merchanService.getLogoList();
        model.addAttribute("firstList",newlist);
        model.addAttribute("logoList",logoList);

        return "/main";
    }

}
