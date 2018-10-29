
package minanonihongo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


	@Autowired
	private CheckAutheticationSuccessHandler successHandler;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("/home").permitAll()
				.antMatchers("/addP").permitAll()
				.antMatchers("/vui-tieng-nhat/**").permitAll()
				.antMatchers("/document/**").permitAll()
				.antMatchers("/thi-thu").permitAll()
				.antMatchers("/van-hoa-nhat-ban/**").permitAll()
				.antMatchers("/alphabet/**").permitAll()
				.antMatchers("/tim-kiem/**").permitAll()
				.antMatchers("/khoa-hoc/**").permitAll()
				.antMatchers("/account/logout").permitAll()
				.antMatchers("/login").permitAll()
				.antMatchers("/facebook").permitAll()
				.antMatchers("/register").permitAll()
				.antMatchers("/**").permitAll()
				.antMatchers("/detail-lesson/**").permitAll()
				.antMatchers("/admin").hasAnyRole("ADMIN")
				.anyRequest()
				.authenticated();
		http.formLogin().loginPage("/home")
				.usernameParameter("email")
				.passwordParameter("password")
				.successHandler(successHandler);
		http.formLogin().loginPage("/")
				.usernameParameter("email")
				.passwordParameter("password")
				.successHandler(successHandler);
		http.exceptionHandling().accessDeniedPage("/404");

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/css/**", "/js/**", "/images/**","/public/**", "/reponsitory/**");
	}
}
