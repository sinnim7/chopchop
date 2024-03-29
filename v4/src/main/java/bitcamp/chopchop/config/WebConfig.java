package bitcamp.chopchop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.util.UrlPathHelper;

@ComponentScan("bitcamp.chopchop.web")
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

  // multipart/form-data 처리할 때
  @Bean
  public MultipartResolver multipartResolver() {
    CommonsMultipartResolver mr = new CommonsMultipartResolver();
    // 이 클래스는 apache-fileupload 라이브러리를 사용한다.
    // 따라서 의존 라이브러리에 명시적으로 추가해야 한다.
    mr.setMaxUploadSize(1000000000);
    mr.setMaxInMemorySize(2000000000);
    mr.setMaxUploadSizePerFile(500000000);
    return mr;
  }

  // 기본 ViewResolver 대체할 때
  @Bean
  public ViewResolver viewResolver() {
    InternalResourceViewResolver vr = new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    return vr;
  }

  @Override
  public void configurePathMatch(PathMatchConfigurer configurer) {
    UrlPathHelper helper = new UrlPathHelper();
    helper.setRemoveSemicolonContent(false);
    configurer.setUrlPathHelper(helper);
  }

  //  @Override
  //  public void addInterceptors(InterceptorRegistry registry) {
  //    registry.addInterceptor(new Controller04_1_Interceptor1());
  //    registry.addInterceptor(new Controller04_1_Interceptor3()).addPathPatterns("/c04_1/**");
  //  }

}


