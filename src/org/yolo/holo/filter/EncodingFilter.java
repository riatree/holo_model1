package org.yolo.holo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")//어노테이션 활용(web.xml 안써도 돌아감 장점이자 단점이될수 있음)
public class EncodingFilter implements Filter{

	@Override
	public void destroy() {
		System.out.println("destroy() 동작");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//post방식의 한글처리
		request.setCharacterEncoding("UTF-8");
		System.out.println("doFilter() 동작");
		chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init() 동작");
		
	}	
	
}//EncodingFilter end
