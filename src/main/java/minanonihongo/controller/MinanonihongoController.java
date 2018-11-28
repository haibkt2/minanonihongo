
package minanonihongo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.JLPTMenu;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.model.Role;
import minanonihongo.model.User;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.JLPTMenuRepository;
import minanonihongo.repository.JLPTQTypeRepository;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;
import minanonihongo.repository.RoleRepository;
import minanonihongo.repository.UserRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import minanonihongo.service.CourseIlmService;
import minanonihongo.service.GoogleUtils;
import minanonihongo.service.RestFB;
import minanonihongo.service.UserServiceImpl;

@Controller
public class MinanonihongoController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	PostTypeRepository postTypeRepository;

	@Autowired
	PostRepository postRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	CourseRepository courseRepository;

	@Autowired
	CourseIlmRepository courseIlmRepository;

	@Autowired
	CourseIlmTypeRepository courseIlmTypeRepository;

	@Autowired
	VocaCourseIlmRepository vocaCourseIlmRepository;

	@Autowired
	JLPTRepository jlptRepository;

	@Autowired
	JLPTMenuRepository jlptMenuRepository;

	@Autowired
	JLPTQTypeRepository jlptQTypeRepository;

	@Autowired
	CourseIlmService courseIlmService;

	@Autowired
	private RestFB restFb;

	@Autowired
	private GoogleUtils googleUtils;

	@Autowired
	UserServiceImpl userserviceimpl;

	@Value("${string.postType.name}")
	private String postType;

	@Value("${string.post.name}")
	private String post;

	@Value("${string.course.anphabe}")
	private String anphabe;

	@Value("${string.reponsitory.local}")
	private String localCourse;

	@Value("${string.role.user}")
	private String roleUser;

	@Value("${string.jlpt.jlpt}")
	private String jlpt;

	@Value("${string.jlpt.exercise}")
	private String jexercise;

	@GetMapping("/403")
	public String accessDenied() {
		return "403";
	}

	@GetMapping("/404")
	public String accessDenieds() {
		return "404";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@RequestParam("password") String password, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("date") String date, @RequestParam("phone") String phone,
			Model model, HttpSession session, HttpServletRequest request) throws Exception {
		User u = userRepository.findByEmail(email);
		if (u != null) {
			model.addAttribute("rg", "error");
			return "public/home";
		}
		User user = userserviceimpl.setUser(password);
		Date bir = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		user.setBirthday(bir);
		user.setPhone(phone);
		user.setEmail(email);
		user.setName(name);
		userRepository.save(user);
		session.setAttribute("user", user);
		URL url = new URL(request.getHeader("Referer"));
		return "redirect:" + url.getPath();
	}

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String login(Model model, HttpSession session, String error, HttpServletRequest req,
			HttpServletResponse response) throws Exception {
		if (error != null) {
			model.addAttribute("login", "error");
		}
		List<Course> courses = courseRepository.findByCourse();
		model.addAttribute("course", courses);
		return "public/home";
	}

	@RequestMapping(value = { "/account/logout" }, method = RequestMethod.GET)
	public String logout(Model model, String logout, String view, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss) throws Exception {
		ss.invalidate();
		URL u = new URL(req.getHeader("Referer"));
		return "redirect:" + u.getPath();
	}

	@RequestMapping(value = { "/vui-tieng-nhat/{postname}", "/vui-tieng-nhat" }, method = RequestMethod.GET)
	public String funnyCourse(Model model, @PathVariable final Optional<String> postname, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) {
		return "public/funnyCourse";
	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}" })
	public String course(Model model, String logout, String view, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss, @PathVariable String courseName) {
		if ("Bang-chu-cai".equals(courseName)) {
			courseName = new String(anphabe.getBytes(Charset.forName("ISO-8859-1")), Charset.forName("UTF-8"));
		}
		Course course = courseRepository.findByCourseName(courseName);
		if (course != null) {
			CourseIlm courseIlm = new CourseIlm();
			if (course.getCourseIlms() != null && course.getCourseIlms().size() > 0) {
				courseIlm = course.getCourseIlms().get(0);
			}
			String courseId = course.getCourseId();
			List<CourseIlmType> courseIlmTypeList = courseIlmTypeRepository.courseIlmType(courseId);
			Map<String, List<CourseIlm>> map = courseIlmService.setMapCourse(courseId, courseIlmTypeList);
			for (CourseIlmType courseIlmType : courseIlmTypeList) {
				model.addAttribute("menu" + courseIlmType.getCourseIlmTypeId(),
						(List<CourseIlm>) map.get(courseIlmType.getCourseIlmTypeName()));
			}
			model.addAttribute("courseIlmTypeList", courseIlmTypeList);
			model.addAttribute("courseIlm", courseIlm);
		} else {
			return "404";
		}
		return "public/course";
	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}/{lesson}/{name}" }, produces = "application/json; charset=utf-8")
	public String courseDetail(Model model, @PathVariable final Optional<String> lesson,
			@PathVariable final Optional<String> courseName, @PathVariable final Optional<String> name,
			@RequestParam String id) throws IOException, Exception {
		String ls = lesson.get();
		CourseIlm courseIlm = courseIlmService.detailLesson(id, ls);
		CourseIlm c = courseIlm;
		List<Map<String, String>> mapJson = courseIlmService.mapJson(courseIlm);
		model.addAttribute("lesson_answers", mapJson.get(0).get("lesson_answers"));
		model.addAttribute("lesson_tasks", mapJson.get(0).get("lesson_tasks"));
		model.addAttribute("lesson_lesson", mapJson.get(0).get("lesson_lesson"));
		model.addAttribute("courseIlm", c);
		return "public/detailCourse";
	}

	@RequestMapping("/facebook")
	public String loginFacebook(HttpServletRequest request, HttpSession session)
			throws ClientProtocolException, IOException, Exception {
		String code = request.getParameter("code");
		if (code == null || code.isEmpty()) {
			return "redirect:/403?facebook=error";
		}
		String accessToken = restFb.getToken(code);
		com.restfb.types.User userFb = restFb.getUserInfo(accessToken);
		User user = userRepository.findByUserId(userFb.getId());
		if (user == null) {
			user = new User();
		}
		user.setUserId(userFb.getId());
		user.setName(userFb.getName());
		user.setAvatar(userFb.getId());
		user.setBirthday(userFb.getBirthdayAsDate());
		user.setEmail(userFb.getEmail());
		user.setFlg("facebook");
		Role r = roleRepository.findByRoleId(roleUser);
		user.setRole(r);
		userRepository.save(user);
		session.setAttribute("user", user);
		URL u = new URL(request.getHeader("Referer"));
		return "redirect:" + u.getPath();
	}

	@RequestMapping("/login-google")
	public String loginGoogle(HttpServletRequest request, HttpSession session)
			throws ClientProtocolException, IOException {
		String code = request.getParameter("code");

		if (code == null || code.isEmpty()) {
			return "redirect:/403?google=error";
		}
		String accessToken = googleUtils.getToken(code);
		User ug = googleUtils.getUserInfo(accessToken);
		ug.setFlg("google");
		Role r = roleRepository.findByRoleId(roleUser);
		ug.setRole(r);
		userRepository.save(ug);
		session.setAttribute("user", ug);
		return "redirect:/";
	}

	@RequestMapping(value = "/document/{course}/download", method = RequestMethod.GET)
	public void download(HttpServletRequest request, HttpServletResponse response, @RequestParam String file,
			@PathVariable final Optional<String> course) {
		response.reset();
		try {
			PrintWriter out = response.getWriter();
			String path = localCourse + course.get() + "/doc/";
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + file + "\"");
			FileInputStream fileInputStream = new FileInputStream(path + file);
			int i;
			while ((i = fileInputStream.read()) != -1) {
				out.write(i);
			}
			fileInputStream.close();
			out.close();
		} catch (IOException e) {
		}
	}

	@RequestMapping(value = { "/van-hoa-nhat-ban/{postname}", "/van-hoa-nhat-ban",
			"/van-hoa-nhat-ban/chuyen-muc/{type}" }, method = RequestMethod.GET)
	public String post(Model model, @PathVariable final Optional<String> postname,
			@PathVariable final Optional<String> type, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss) {
		boolean pn = postname.isPresent();
		boolean t = type.isPresent();
		List<PostType> postTypes = (List<PostType>) postTypeRepository.findAll();
		if (pn) {
			String postId = post + postname.get().substring(0, 6);
			Post post = postRepository.findByPostId(postId);
			model.addAttribute("post", post);
		} else if (t) {
			String postTypeId = postType + type.get().substring(0, 5);
			List<Post> posts = postRepository.findPostCm(postTypeId);
			model.addAttribute("posts", posts);
		} else {
			if (postTypes != null) {
				List<Post> posts = postTypes.get(0).getPosts();
				model.addAttribute("posts", posts);
			}
		}
		List<Post> postmn = postRepository.findPostMn();
		model.addAttribute("postmn", postmn);
		model.addAttribute("postt", postTypes);
		return "public/post";
	}

	@RequestMapping(value = { "/luyen-de" })
	public String examMenu(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss)
			throws Exception {
		return "public/menuExam";
	}

	@RequestMapping(value = { "/luyen-de/{courseName}" })
	public String examList(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable String courseName) throws Exception {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null) {
			return "404";
		} else {
			List<Course> courses = courseRepository.findByCourse();
			courses.remove(0);
			model.addAttribute("courses", courses);
			model.addAttribute("course", course);
			List<JLPTMenu> je = jlptMenuRepository.findExJLPT(course.getCourseId(), jexercise);
			model.addAttribute("je", je);
		}
		return "public/listExam";
	}

	@RequestMapping(value = { "/luyen-de/{courseName}/{examName}" })
	public String examDetail(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable String courseName, @PathVariable String examName) throws Exception {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null) {
			return "404";
		} else {
			String jlptId = "JLPTE" + examName.split("-")[0];
			List<JLPTQType> jt = jlptQTypeRepository.findQQuestion(jlptId);
			if (jt.size() > 0) {
				List<Map<String, String>> mapJson = courseIlmService.mapJsonS(jt);
				model.addAttribute("lesson_answers", mapJson.get(0).get("lesson_answers"));
				model.addAttribute("lesson_tasks", mapJson.get(0).get("lesson_tasks"));
				model.addAttribute("lesson_lesson", mapJson.get(0).get("lesson_lesson"));
				model.addAttribute("jt", jt);
				model.addAttribute("timeout", jt.get(0).getJlptQuestions().get(0).getJlpt().getTimeout());
			}
		}
		return "public/detailJlpt";
	}

	@RequestMapping(value = { "/thi-thu-truc-tuyen" })
	public String examRS(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss)
			throws Exception {
		return "public/examRs";
	}

	@RequestMapping("/tim-kiem/{keysearch}")
	@ResponseBody
	public String search(Model model, String logout, String view, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss, @PathVariable String keysearch) {
		List<Course> findCourse = courseRepository.findByCourse();
		model.addAttribute("course", findCourse);
		return keysearch;
	}

	@RequestMapping("/tra-cuu/{keysearch}")
	public String searchVoca(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@PathVariable String keysearch) {
		List<VocaCourseIlm> findVoca = vocaCourseIlmRepository.searchVocaCourseIlm(keysearch);
		model.addAttribute("voca", findVoca);
		model.addAttribute("key", keysearch);
		return "public/dictionary";
	}
	
	@RequestMapping("/account")
	public String account(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss) {
		return "public/account";
	}
	@RequestMapping("/account/change-info")
	@ResponseBody
	public String acChange(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss) {
		System.out.println("sssadsdasd");
		return "public/account";
	}
}
