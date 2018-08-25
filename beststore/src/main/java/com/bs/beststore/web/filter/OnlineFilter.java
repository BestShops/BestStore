package com.bs.beststore.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bs.beststore.vo.Human;

/**
 * 
 * 过滤未登录的页面
 * 
 * @author Administrator
 *
 */
@WebFilter("*.do")
public class OnlineFilter implements Filter {
	private static final long serialVersionUID = 1L;

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("welcomePage.do");// 这里设置如果没有登陆将要转发到的页面
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession(true);

		// System.out.println(((HttpServletRequest) request).getRequestURI());
		// 从session里取的用户名信息
		Human human = (Human) session.getAttribute("loginHuman");// 这里获取session，为了检查session里有没有保存用户信息，没有的话回转发到登陆页面

		// 判断如果没有取到用户信息,就跳转到登陆页面
		if (human == null) {
			// 跳转到登陆页面
			dispatcher.forward(request, response);
			System.out.println("用户没有登陆，不允许操作");
		} else {
			// 已经登陆,继续此次请求
			chain.doFilter(request, response);
			System.out.println("用户已经登陆，允许操作");
		}
	}

	public void destroy() {
	}
}
