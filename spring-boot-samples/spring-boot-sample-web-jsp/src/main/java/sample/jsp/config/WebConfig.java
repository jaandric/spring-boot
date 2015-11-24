package sample.jsp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;


@Configuration
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/META-INF/resources/").setCachePeriod(31536000);
	}

	@Override
	public void configureDefaultServletHandling(final DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Bean
	public TilesConfigurer tilesConfigurer(){
		final TilesConfigurer tc = new TilesConfigurer();
		tc.setDefinitions(new String[]{"/WEB-INF/tiles-defs.xml"});
		return tc;
	}

	@Bean
	public TilesViewResolver tilesViewResolver(){
		final TilesViewResolver tvr = new TilesViewResolver();
		tvr.setViewClass(TilesView.class);
		tvr.setOrder(0);
		return tvr;
	}

	@Bean
	public ViewResolver viewResolver(){
		final InternalResourceViewResolver irvr = new InternalResourceViewResolver();
		irvr.setPrefix("/WEB-INF/jsp/");
		irvr.setOrder(1);

		return irvr;
	}

}
