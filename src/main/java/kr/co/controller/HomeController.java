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
import kr.co.vo.OrderVO;

@Controller
public class HomeController {
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @Inject
   AdminService adminService;

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

      return "home";
   }
}