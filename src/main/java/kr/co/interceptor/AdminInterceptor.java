package kr.co.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.vo.MemberVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest req,
		HttpServletResponse res, Object obj) throws Exception {
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null) {
			res.sendRedirect("/");
			return false;
		}
		
		
<<<<<<< HEAD
	
		if(member.getVerify() != 9){
=======
		if(member.getVerify() != 0) {
>>>>>>> branch 'master' of https://github.com/yssu95/2020-05-24.git
			res.sendRedirect("/");
	         return false;
		}
	      return true;
		
		
	}
}