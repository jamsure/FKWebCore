package com.fk.javaweb.listener;

import java.util.Date;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

/**
 * Application Lifecycle Listener implementation class RequestListenerAttribute
 *
 */
@WebListener
public class RequestListenerAttribute implements ServletRequestAttributeListener {
	String date=new Date().toString();	
	
    /**
     * Default constructor. 
     */
    public RequestListenerAttribute() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
     */
    public void attributeRemoved(ServletRequestAttributeEvent arg0)  { 
         System.out.println(date+"***删除request属性-->属性名称："+arg0.getName()+",属性内容："+arg0.getValue());
    }

	/**
     * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
     */
    public void attributeAdded(ServletRequestAttributeEvent arg0)  { 
    	System.out.println(date+"***增加request属性-->属性名称："+arg0.getName()+",属性内容："+arg0.getValue());
    }

	/**
     * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
     */
    public void attributeReplaced(ServletRequestAttributeEvent arg0)  { 
    	HttpServletRequest hsr=(HttpServletRequest)arg0.getServletRequest();
    	System.out.println(date+"***修改前的request属性-->属性名称："+arg0.getName()+",属性内容："+arg0.getValue());
    	System.out.println(date+"***修改后的request属性-->属性名称："+arg0.getName()+",属性内容："+hsr.getAttribute((String)arg0.getName()));
    	//System.out.println(hsr.getAttribute((String)arg0.getName()));
    }
	
}
