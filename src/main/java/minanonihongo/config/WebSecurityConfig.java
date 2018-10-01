
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
	private UserDetailsService userDetailsService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	private CheckAutheticationSuccessHandler successHandler;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/login-facebook").permitAll()
				.antMatchers("/").permitAll()
				.antMatchers("/downloadFile").permitAll()
				.antMatchers("/home").permitAll()
				.antMatchers("/userStatistics").hasAnyRole("ADMIN")
				.antMatchers("/managementAccount").hasAnyRole("ADMIN")
				.antMatchers("/managementClass").hasAnyRole("ADMIN")
				.antMatchers("/managementPost").hasAnyRole("ADMIN")
				.antMatchers("/profile").hasAnyRole("STUDENT", "ADMIN","TEACHER")
				.antMatchers("/addUser").hasAnyRole("ADMIN")
				.antMatchers("/updatePost").hasAnyRole("ADMIN")
				.antMatchers("/createNotify").hasAnyRole("ADMIN")
				.antMatchers("/orderCld").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/viewClass").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/updateInfo").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/viewClass").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/orderCalendar").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/viewRoom").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/register").permitAll()
				.antMatchers("/historyOrder").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/manageOrder").hasAnyRole("STUDENT","ADMIN","TEACHER")
				.antMatchers("/request").hasAnyRole("ADMIN","TEACHER")
				.anyRequest()
				.authenticated();
		http.formLogin().loginPage("/home")
				.usernameParameter("userId")
				.passwordParameter("password")
				.successHandler(successHandler);
		http.formLogin().loginPage("/")
				.usernameParameter("userId")
				.passwordParameter("password")
				.successHandler(successHandler)
				.and()
				.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/home?logout")
				.invalidateHttpSession(true)
				.permitAll();
		http.exceptionHandling().accessDeniedPage("/403");

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/css/**", "/js/**", "/images/**");
	}
}
