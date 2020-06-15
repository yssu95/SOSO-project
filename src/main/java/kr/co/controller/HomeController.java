package kr.co.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.AdminService;
import kr.co.service.ReviewBoardService;
import kr.co.vo.OrderVO;
import kr.co.vo.ReviewBoardVO;

@Controller
public class HomeController {
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @Inject
   AdminService adminService;
   
   @Inject
   ReviewBoardService service;
   

   // home controller
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Locale locale, Model model) throws Exception {
      logger.info("Welcome home! the client locale is " + locale.toString());

      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

      String formattedDate = dateFormat.format(date);

      model.addAttribute("serverTime", formattedDate);

      List<OrderVO> orderList = adminService.orderList();

      model.addAttribute("orderList", orderList);
      
      
      List<ReviewBoardVO> homelist = service.homelist();
      
      model.addAttribute("homelist", homelist);
    
      
      return "home";
   }
   
   // notice controller
   @RequestMapping(value = "/notice/notice", method = RequestMethod.GET)
   public String notice() throws Exception {
      logger.info("Welcome home! the client locale is ");

     

      return "/notice/notice";
   }
   
// notice controller
   @RequestMapping(value = "/intro.do", method = RequestMethod.GET)
   public void intro() throws Exception {
      logger.info("Welcome home! the client intro is ");

     

     
   }
}

