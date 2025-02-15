package com.msb.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.msb.model.Other;
import com.msb.model.SchoolUser;

public class SingerUserAuthenticationInterceptor extends HandlerInterceptorAdapter {

	
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
	
		HttpSession session=request.getSession();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		Other otherData = (Other) session.getAttribute("Other");
		if(userData!=null || otherData!=null){
			return true;
		}else{
			System.out.println("interceptor called");
			String nextURL=request.getRequestURI().replace(request.getContextPath(), "");
			response.sendRedirect(request.getContextPath()+"/singer/login?invalidsession=true&next="+nextURL);
			return false;
		}
		
		
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			Exception exceptionIfAny) throws Exception {

	}

}
