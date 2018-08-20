package com.bs.beststore.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
       
    }

    public void contextInitialized(ServletContextEvent s)  { 
        String basePath=s.getServletContext().getContextPath();
        s.getServletContext().setAttribute("basePath", basePath);
    }
	
}
