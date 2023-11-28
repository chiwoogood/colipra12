package kr.spring.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@EnableTransactionManagement
public class WebConfiguration implements WebMvcConfigurer{
   
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
      

      registry.addResourceHandler("/image/**").addResourceLocations("file:///C:\\ColiFileDirectory\\");
      registry.addResourceHandler("/img/**").addResourceLocations("file:///C:\\ColiFileDirectory\\");
      registry.addResourceHandler("/ColiFileDirectory/**").addResourceLocations("file:///C:/ColiFileDirectory/");
   }
   
}