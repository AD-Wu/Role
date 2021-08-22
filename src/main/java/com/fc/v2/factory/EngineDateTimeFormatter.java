package com.fc.v2.factory;

import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @Desc TODO
 * @Date 2021/7/20 22:56
 * @Author AD
 */
@Component
public class EngineDateTimeFormatter {
    
    // @Value("${spring.jackson.date-format:yyyy-MM-dd HH:mm:ss}")
    private String pattern ="yyyy-MM-dd HH:mm:ss";
    
    @Bean
    public LocalDateTimeSerializer localDateTimeDeserializer() {
        return new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(pattern));
    }
    
    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        LocalDateTimeSerializer localDateTimeSerializer = new EngineDateTimeFormatter().localDateTimeDeserializer();
        return builder -> builder.serializerByType(LocalDateTime.class, localDateTimeSerializer);
    }
    
}
