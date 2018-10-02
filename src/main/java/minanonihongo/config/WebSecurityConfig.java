
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
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/home").permitAll()
				.antMatchers("/alphabet/**").permitAll()
				.antMatchers("/facebook").permitAll()
				.antMatchers("/").permitAll()
				.antMatchers("/downloadFile").permitAll()
				.anyRequest()
				.authenticated();
		http.formLogin().loginPage("/home")
				.usernameParameter("userId")
				.passwordParameter("password")
				.defaultSuccessUrl("/home");
		http.formLogin().loginPage("/")
				.usernameParameter("userId")
				.passwordParameter("password")
				.defaultSuccessUrl("/home")
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
