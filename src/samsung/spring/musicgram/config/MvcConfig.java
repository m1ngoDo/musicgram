package samsung.spring.musicgram.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "samsung.spring.musicgram.controller")
public class MvcConfig implements WebMvcConfigurer {

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/", ".jsp");
	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver resolver = new CommonsMultipartResolver();
	    resolver.setDefaultEncoding("utf-8");
	    resolver.setMaxUploadSize(500000);
	    return resolver;
	}
}