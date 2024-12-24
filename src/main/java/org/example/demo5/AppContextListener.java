package org.example.demo5;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
//web.xml에 리스너로 등록
public class AppContextListener implements
        ServletContextListener {
    public void contextInitialized(ServletContextEvent sce) {
        // 애플리케이션 초기화 로직
        System.out.println("Web application started");
    }

    public void contextDestroyed(ServletContextEvent sce) {
        // 애플리케이션 종료 로직
        System.out.println("Web application stopped");
    }
}
