package minanonihongo.config;

import java.io.IOException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import minanonihongo.model.User;
import minanonihongo.repository.UserRepository;

@Component
public class CheckAutheticationSuccessHandler implements AuthenticationSuccessHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Autowired
	UserRepository userRepo;
	@Value("${string.role.admin}")
	private String roleAdmin;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		request.setAttribute("login", "error");
		HttpSession session = request.getSession();
		String userName = auth.getName();
		User loginUser = userRepo.findByUserName(userName);
		session.setAttribute("user", loginUser);
		if (roleAdmin.equals(loginUser.getRole().getRoleId())) {
			redirectStrategy.sendRedirect(request, response, "/admin");
		} else {
			String c = request.getHeader("Referer");
			if (c != null) {
				URL u = new URL(c);
				redirectStrategy.sendRedirect(request, response, u.getPath());
			}
		}
	}
}

// if (loginUser.getRole().getRoleName().equals("ROLE_ADMIN"))
// redirectStrategy.sendRedirect(request, response, "/admin");
// else if (loginUser.getRole().getRoleName().equals("ROLE_USER"))
// redirectStrategy.sendRedirect(request, response, "/home");
// else redirectStrategy.sendRedirect(request, response, "/home");
