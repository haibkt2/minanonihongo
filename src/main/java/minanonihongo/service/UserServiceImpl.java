
package minanonihongo.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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

//	@Autowired
//	UserDetails userDetails;

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

	public String changeInfo(User user, String field, String value) {
		try {
			switch (field) {
			case "name":
				user.setName(value);
				break;
			case "phone":
				user.setPhone(value);
				break;
			case "email":
				user.setEmail(value);
				break;
			case "birthday":
				Date bir;
				bir = new SimpleDateFormat("yyyy-MM-dd").parse(value);
				user.setBirthday(bir);
				break;
			case "address":
				user.setAddress(value);
				break;
			case "password":
				user.setPassword(bcrypass.encode(value));
				break;
			default:
				break;
			}
			userRepository.save(user);
		} catch (Exception e) {
			return "er";
		}
		return "ss";
	}

	public String changePass(User user, String po, String pn) {
		String o = user.getPassword();
		String n = bcrypass.encode(po);
		if (user.getPassword().equals(bcrypass.encode(po))) {
			user.setPassword(bcrypass.encode(pn));
			userRepository.save(user);
			return "success";
		} else {
			return "Invalid password";
		}
	}
	public String changeAvatar(User user,MultipartFile file) {
		return "success";
	}
}