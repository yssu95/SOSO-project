package kr.co.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
=======
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

<<<<<<< HEAD
import kr.co.service.CompanyService;
import kr.co.service.ReviewBoardService;
import kr.co.service.dminService;
import kr.co.vo.OrderVO;
import kr.co.vo.ReviewBoardVO;
import kr.co.vo.VisitorCountVO;
=======
import kr.co.service.AdminService;
import kr.co.service.ReviewBoardService;
import kr.co.vo.OrderVO;
import kr.co.vo.ReviewBoardVO;
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git

@Controller
public class HomeController {
<<<<<<< HEAD
   private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
   @Inject
   CompanyService companyService;
   
   @Inject
   ReviewBoardService service;
   @Inject
   dminService dminService;
=======
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @Inject
   AdminService adminService;
   
   @Inject
   ReviewBoardService service;
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
   

   // home controller
   @RequestMapping(value = "/", method = RequestMethod.GET)
<<<<<<< HEAD
   public String home(Locale locale, Model model, HttpServletRequest request,VisitorCountVO vo) throws Exception {
=======
   public String home(Locale locale, Model model) throws Exception {
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
      logger.info("Welcome home! the client locale is " + locale.toString());

      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

      String formattedDate = dateFormat.format(date);

      model.addAttribute("serverTime", formattedDate);

<<<<<<< HEAD
      List<OrderVO> orderList = companyService.orderList();

      model.addAttribute("orderList", orderList);
      
      
      List<ReviewBoardVO> homelist = service.homelist();
      
      model.addAttribute("homelist", homelist);
    
      System.out.println(request.getRemoteAddr());
      String ip = request.getRemoteAddr();
      vo.setIp(ip);
      dminService.insertVisitor(vo);
      
=======
      List<OrderVO> orderList = adminService.orderList();

      model.addAttribute("orderList", orderList);
      
      
      List<ReviewBoardVO> homelist = service.homelist();
      
      model.addAttribute("homelist", homelist);
    
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
      
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

<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
