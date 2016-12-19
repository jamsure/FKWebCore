package com.fk.javaweb.listener;

import java.util.Date;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class RequestListener
 *
 */
@WebListener
public class RequestListener implements ServletRequestListener {
    String date=new Date().toString();
    /**
     * Default constructor. 
     */
    public RequestListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent arg0)  { 
 
        System.out.println(date+"***RequestListener---销毁---http://"+arg0.getServletRequest().getRemoteAddr()+arg0.getServletContext().getContextPath());
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent arg0)  { 
        System.out.println(date+"***RequestListener---初始化---http://"+arg0.getServletRequest().getRemoteAddr()+arg0.getServletContext().getContextPath());
    }
	
}
