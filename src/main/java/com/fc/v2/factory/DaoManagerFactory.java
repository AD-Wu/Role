package com.fc.v2.factory;

import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.core.DatabaseConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

/**
 * @Desc
 * @Date 2021/5/29 12:31
 * @Author AD
 */
@Component
@EnableTransactionManagement
public class DaoManagerFactory {
    
    @Value("${spring.datasource.druid.master.url}")
    private String url;
    @Value("${spring.datasource.driverClassName}")
    private String driver;
    @Value("${spring.datasource.druid.master.username}")
    private String user;
    @Value("${spring.datasource.druid.master.password}")
    private String password;
    // @Autowired
    // private DataSource dataSource;
    private DaoManager daoManager;
    
    @Bean
    public DaoManager getDaoManager() throws Exception {
        if (daoManager != null) {
            return daoManager;
        }
        synchronized (this) {
            if (daoManager != null) {
                return daoManager;
            }
            DatabaseConfig d = new DatabaseConfig();
            d.setName("AD");
            d.setUrl(url);
            d.setDriver(driver);
            d.setUser(user);
            d.setPassword(password);
            this.daoManager = new DaoManager(d);
            // DaoManager daoManager = new DaoManager("ad", dataSource);
            // this.daoManager = daoManager;
        }
        return this.daoManager;
    }
    
}
