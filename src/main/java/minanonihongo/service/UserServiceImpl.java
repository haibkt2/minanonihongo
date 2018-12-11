
package minanonihongo.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
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

	@Autowired
	@Qualifier("javasampleapproachMailSender")
	EmailService emailService;

	// @Autowired
	// UserDetails userDetails;

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
		String rg = user.getFlg();
		try {
			switch (field) {
			case "name":
				user.setName(value);
				break;
			case "phone":
				user.setPhone(value);
				break;
			case "email":
				User u = userRepository.findByEmail(value,rg);
				if (u != null)
					if (!u.getUserId().equals(user.getUserId()) && value.equals(u.getEmail()))
						return "er";
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
		if (bcrypass.matches(po, user.getPassword())) {
			user.setPassword(bcrypass.encode(pn));
			userRepository.save(user);
			return "success";
		} else {
			return "Invalid password";
		}
	}

	public boolean checkTypeImgr(MultipartFile file) {
		String orgName = file.getOriginalFilename();
		String type = orgName.split(".")[1].toLowerCase();
		switch (type) {
		case "jpg":
			return true;
		case "png":
			return true;
		case "gif":
			return true;
		case "tiff":
			return true;
		case "bmp":
			return true;
		default:
			return false;
		}
	}

	public String resetPass(User user) {
		Map<String, String> getSendMail = new HashMap<String, String>();
		user.setPassword(coService.setPassword(8));
		getSendMail = emailService.SendMail(user);
		emailService.sendMail(getSendMail.get("mailform"), getSendMail.get("toMail"), getSendMail.get("subject"),
				getSendMail.get("body"));
		user.setPassword(bcrypass.encode(user.getPassword()));
		userRepository.save(user);
		return "Thay đổi mật khẩu thành công.!";
	}
}