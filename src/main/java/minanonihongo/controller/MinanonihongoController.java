
package minanonihongo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;

import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.model.Role;
import minanonihongo.model.User;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;
import minanonihongo.repository.RoleRepository;
import minanonihongo.repository.UserRepository;
import minanonihongo.service.CourseIlmService;
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
	CourseIlmService courseIlmService;

	@Autowired
	private RestFB restFb;

	@Autowired
	MessageSource msgSrc;
	@Autowired
	UserServiceImpl userserviceimpl;

	@Value("${string.domain.default}")
	private String domain;

	@Value("${string.postType.name}")
	private String postType;

	@Value("${string.post.name}")
	private String post;

	@Value("${string.course.anphabe}")
	private String anphabe;

	@Value("${button.save.success}")
	private String messageSave;

	@Value("${string.reponsitory.local.post}")
	private String localPost;

	@Value("${string.reponsitory.local.course}")
	private String localCourse;
	
	
	@Value("${string.role.default}")
	private String roleDefault;
	
	
	@GetMapping("/403")
	public String accessDenied() {
		return "403";
	}

	@GetMapping("/404")
	public String accessDenieds() {
		return "404";
	}

	@RequestMapping(value = { "/alphabet/{name}" }, method = RequestMethod.GET)
	public String login(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, @PathVariable String name) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return "alphabet";
	}

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) {
		return "home";
	}

	@RequestMapping(value = { "/account/logout" }, method = RequestMethod.GET)
	public String logout(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) throws Exception {
		ss.invalidate();
		URL u = new URL(req.getHeader("Referer"));
		return "redirect:" + u.getPath();
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
		return "post";
	}

	@RequestMapping(value = { "/vui-tieng-nhat/{postname}", "/vui-tieng-nhat" }, method = RequestMethod.GET)
	public String funnyCourse(Model model, @PathVariable final Optional<String> postname, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) {
		return "funnyCourse";
	}

	@RequestMapping(value = { "/thi-thu" }, method = RequestMethod.POST)
	@ResponseBody
	public String result(Model model, @RequestParam String grade, @RequestParam String data,
			@RequestParam String total_grade, @RequestParam String course, @RequestParam String passed,
			@RequestParam String created, @RequestParam String _id, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) throws Exception {
		JSONObject json = new JSONObject();
		json.put("grade", grade);
		json.put("data", data);
		json.put("grade", grade);
		json.put("total_grade", total_grade);
		json.put("passed", passed);
		json.put("created", created);
		json.put("_id", _id);
		return json.toString();
	}

	@RequestMapping("/tim-kiem/{keysearch}")
	@ResponseBody
	public String search(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss, @PathVariable String keysearch) {
		List<Course> findCourse = courseRepository.findByCourse();
		model.addAttribute("course", findCourse);
		return keysearch;
	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}" })
	public String course(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss, @PathVariable String courseName) {
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
				model.addAttribute(courseIlmType.getCourseIlmTypeId(),
						(List<CourseIlm>) map.get(courseIlmType.getCourseIlmTypeName()));
			}
			model.addAttribute("courseIlmTypeList", courseIlmTypeList);
			model.addAttribute("courseIlm", courseIlm);
		} else {
			return "404";
		}
		return "course";
	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}/{lesson}/{name}" }, produces = "application/json; charset=utf-8")
	public String courseDetail(Model model, @PathVariable final Optional<String> lesson,
			@PathVariable final Optional<String> courseName, @PathVariable final Optional<String> name,
			@RequestParam String id) throws IOException, Exception {
		String ls = lesson.get();
		CourseIlm courseIlm = courseIlmService.detailLesson(id, ls);
		model.addAttribute("courseIlm", courseIlm);
		List<Map<String, String>> mapJson = courseIlmService.mapJson(courseIlm);
		model.addAttribute("lesson_answers", mapJson.get(0).get("lesson_answers"));
		model.addAttribute("lesson_tasks", mapJson.get(0).get("lesson_tasks"));
		model.addAttribute("lesson_lesson", mapJson.get(0).get("lesson_lesson"));
		return "detailCourse";
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
			user.setUserId(userFb.getId());
			user.setUserName(userFb.getName());
			user.setAvatar(userFb.getId());
			user.setBirthday(userFb.getBirthdayAsDate());
			user.setEmail(userFb.getEmail());
			Role r = roleRepository.findByRoleId(roleDefault);
			user.setRole(r);
			userRepository.save(user);
		}
		session.setAttribute("user", user);
		URL u = new URL(request.getHeader("Referer"));
		return "redirect:" + u.getPath();
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
}
