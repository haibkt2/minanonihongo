
package minanonihongo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.ClientProtocolException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;

import com.google.gson.Gson;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
import minanonihongo.model.Exam;
import minanonihongo.model.CourseGlobal;
import minanonihongo.model.ExamResult;
import minanonihongo.model.User;
import minanonihongo.model.test;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
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

	@Value("${string.course.anphabe}")
	private String anphabe;

	@Value("${button.save.success}")
	private String messageSave;

	@Value("${string.reponsitory.post}")
	private String localPost;
	@Value("${string.reponsitory.image}")
	private String localImage;

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
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User findUser = userRepository.findByUserId("ssssssss");
		return "home";
	}

	@RequestMapping("/tim-kiem/{key}")
	@ResponseBody
	public String header(Model model, String error, String logout, String view, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss, @PathVariable String key) {
		List<Course> findCourse = courseRepository.findByCourse();
		model.addAttribute("course", findCourse);
		return key;
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
			HttpServletResponse response, HttpSession ss, @PathVariable String courseName,
			@PathVariable final Optional<String> lesson) {
		if ("Bang-chu-cai".equals(courseName)) {
			courseName = new String(anphabe.getBytes(Charset.forName("ISO-8859-1")), Charset.forName("UTF-8"));
		}
		Course course = courseRepository.findByCourseName(courseName);
		if (course != null) {
			CourseIlm courseIlm = new CourseIlm();
			if (course.getCourseIlms() != null && course.getCourseIlms().size() > 0) {
				courseIlm = course.getCourseIlms().get(0);
			}
			model.addAttribute("courseIlm", courseIlm);
			String courseId = course.getCourseId();
			List<CourseIlmType> courseIlmTypeList = courseIlmTypeRepository.courseIlmType(courseId);
			Map<String, List<CourseIlm>> map = courseIlmService.setMapCourse(courseId, courseIlmTypeList);
			for (CourseIlmType courseIlmType : courseIlmTypeList) {
				model.addAttribute(courseIlmType.getCourseIlmTypeId(),
						(List<CourseIlm>) map.get(courseIlmType.getCourseIlmTypeName()));
			}
			model.addAttribute("courseIlmTypeList", courseIlmTypeList);

		} else {
			return "404";
		}
		return "course";

	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}/{lesson}" }, produces = "application/json; charset=utf-8")
	public String courseDetail(Model model, @PathVariable final String lesson) throws IOException {
		// if()
		return "main_test";
	}
	
	@RequestMapping(value = { "/test/{courseName}" }, method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody String testDetail(Model model, @PathVariable final String courseName) throws IOException {
		// if()
		System.out.println("sssssssssssssss");
		return "404";
	}


	@RequestMapping(value = { "/main_course" }, produces = "application/json; charset=utf-8")
	public @ResponseBody String c_etail(Model model, @RequestParam String id) throws IOException {
		Gson g = new Gson();
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);

		courseIlm.setCourseIlmType(new CourseIlmType());
		if (courseIlm.getCourseGlobal() != null) {
			courseIlm.setCourseGlobal(new CourseGlobal(courseIlm.getCourseGlobal().getTotalNumber()));
		} else {
			courseIlm.setCourseGlobal(new CourseGlobal(0));
		}
		Course crs = new Course(courseIlm.getCourse().getCourseName());
		if ("000".equals(id.substring(id.length() - 3, id.length()))) {
			List<Document> docList = new ArrayList<>();
			for (Document doc : courseIlm.getCourse().getDocuments()) {
				docList.add(new Document(doc.getLocaFileDoc()));
			}
			crs.setDocuments(docList);
		}
		courseIlm.setCourse(crs);
		courseIlm.setExamResult(new ExamResult());
		courseIlm.setUser(new User());
		List<Exam> exam = courseIlm.getExams();
		if (!exam.isEmpty()) {
			courseIlm.setExams(null);
		}
		String courseG = g.toJson(courseIlm);
		System.out.println(courseG);
		return courseG;
	}

	@RequestMapping("/facebook")
	public String loginFacebook(HttpServletRequest request) throws ClientProtocolException, IOException, Exception {

		UserServiceImpl userServiceImpl = new UserServiceImpl();
		String code = request.getParameter("code");
		if (code == null || code.isEmpty()) {
			return "redirect:/403?facebook=error";
		}
		String accessToken = restFb.getToken(code);
		com.restfb.types.User userFb = restFb.getUserInfo(accessToken);
		User user = new User();
		user.setUserId(userFb.getId());
		UserDetails userDetail = restFb.buildUser(userFb);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		URL u = new URL(request.getHeader("Referer"));
		return "redirect:" + u.getPath();
	}

	@RequestMapping(value = "/downloadFile", method = RequestMethod.GET)
	public String download(HttpServletRequest request, HttpServletResponse response, @RequestParam String file) throws IOException {
		response.reset();
		PrintWriter out = response.getWriter();
		String path = localPost;
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + file + "\"");

		FileInputStream fileInputStream = new FileInputStream(path + file);
		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
		return "home";
	}
}
