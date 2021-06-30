package com.fc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.awt.*;
import java.net.URI;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class EngineApp implements CommandLineRunner {
    
    public static void main(String[] args) {
        
        SpringApplication.run(EngineApp.class, args);
    }
    
    static {
        // Desktop.getDesktop(); 防止报错
        System.setProperty("java.awt.headless", "false");
    }
    
    @Value("${server.port}")
    private int serverPort;
    
    @Override
    public void run(String... args) throws Exception {
        String url = "http://localhost:" + serverPort;
        try {
            // 创建一个URI实例
            URI uri = URI.create(url);
            // 获取当前系统桌面扩展
            Desktop desktop = Desktop.getDesktop();
            // 判断系统桌面是否支持要执行的功能
            if (desktop.isSupported(Desktop.Action.BROWSE)) {
                // 获取系统默认浏览器打开链接
                desktop.browse(uri);
                System.out.println("打开路径:" + url);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
