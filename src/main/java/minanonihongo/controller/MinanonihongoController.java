
package minanonihongo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import minanonihongo.service.RestFB;

@Controller
public class MinanonihongoController {
	
	@Autowired
	private RestFB restFb;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String login(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response) {
		return "home";
	}

	@RequestMapping("/login-facebook")
	public String loginFacebook(HttpServletRequest request) throws ClientProtocolException, IOException {
		String code = request.getParameter("code");

		if (code == null || code.isEmpty()) {
			return "redirect:/login?facebook=error";
		}
		String accessToken = restFb.getToken(code);

		com.restfb.types.User user = restFb.getUserInfo(accessToken);
		UserDetails userDetail = restFb.buildUser(user);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/user";
	}

}
