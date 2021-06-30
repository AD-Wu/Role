package com.fc;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
* @ClassName: SpringbootWebInitializer
* @Description: web容器中进行部署
* @author fuce
* @date 2018年8月18日
*
*/
public class EngineWebInitializer extends SpringBootServletInitializer{
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
    {
        return application.sources(EngineApp.class);
    }
}
