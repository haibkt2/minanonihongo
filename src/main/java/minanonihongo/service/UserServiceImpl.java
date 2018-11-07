
package minanonihongo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import minanonihongo.model.Role;
import minanonihongo.model.User;
import minanonihongo.repository.RoleRepository;
import minanonihongo.repository.UserRepository;

@Service
public class UserServiceImpl {

	@Value("${string.role.user}")
	private String roleUser;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	CommonService coService;
	private BCryptPasswordEncoder bcrypass = new BCryptPasswordEncoder();
	public User setUser(String pass) throws Exception {
		Role role = roleRepository.findByRoleId(roleUser);
		User user = new User();
		List<User> users = userRepository.findUserRg();
		String userId = "USER00000000001";
		if (users.size() > 0) {
			int id = Integer.parseInt(users.get(users.size() - 1).getUserId().substring(4, 15)) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 11) {
				int count = 11 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			userId = "USER".concat("" + countUsId);
		}
		user.setUserId(userId);
		user.setUserName(userId);
		user.setRole(role);
		user.setFlg("rg");
		user.setPassword(bcrypass.encode(pass));
		return user;
	}
}