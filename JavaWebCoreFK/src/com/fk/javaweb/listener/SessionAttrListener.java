package com.fk.javaweb.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class SessionAttrListener
 *
 */
@WebListener
public class SessionAttrListener implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public SessionAttrListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    	System.out.println(arg0.getSession().getId()+"增加属性-->属性名称："+arg0.getName()+",属性内容 ： "+arg0.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent arg0)  { 
    	System.out.println(arg0.getSession().getId()+"删除属性-->属性名称："+arg0.getName()+",属性内容 ： "+arg0.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
    	System.out.println(arg0.getSession().getId()+"更改属性-->属性名称："+arg0.getName()+",属性内容 ： "+arg0.getValue());
    }
	
}
