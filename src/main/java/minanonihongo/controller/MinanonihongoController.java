
package minanonihongo.controller;

import java.io.File;
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
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import minanonihongo.model.Course;
import minanonihongo.model.CourseFun;
import minanonihongo.model.CourseFunType;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTMenu;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTResult;
import minanonihongo.model.JLPTResultJson;
import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.model.Role;
import minanonihongo.model.User;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseFunRepository;
import minanonihongo.repository.CourseFunTypeRepository;
import minanonihongo.repository.CourseGlobalRepository;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.JLPTMenuRepository;
import minanonihongo.repository.JLPTQTypeRepository;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.JLPTRsRepository;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;
import minanonihongo.repository.RoleRepository;
import minanonihongo.repository.UserRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import minanonihongo.service.Common;
import minanonihongo.service.CommonService;
import minanonihongo.service.CourseFunServiceImpl;
import minanonihongo.service.CourseGbService;
import minanonihongo.service.CourseIlmService;
import minanonihongo.service.GoogleUtils;
import minanonihongo.service.JLPTResultService;
import minanonihongo.service.JLPTService;
import minanonihongo.service.PostServiceImpl;
import minanonihongo.service.RestFB;
import minanonihongo.service.UserServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

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
	JLPTRsRepository jlptRsRepository;

	@Autowired
	CourseGlobalRepository courseGlobalRepository;

	@Autowired
	CourseFunTypeRepository courseFunTypeRepository;

	@Autowired
	CourseFunRepository courseFunRepository;

	@Autowired
	JLPTMenuRepository jlptMenuRepository;

	@Autowired
	JLPTQTypeRepository jlptQTypeRepository;

	@Autowired
	CourseIlmService courseIlmService;

	@Autowired
	JLPTResultService jlptResultService;

	@Autowired
	CommonService commonService;

	@Autowired
	CourseGbService courseGbService;

	@Autowired
	PostServiceImpl postServiceImpl;

	@Autowired
	CourseFunServiceImpl courseFunServiceImpl;

	@Autowired
	private RestFB restFb;

	@Autowired
	private GoogleUtils googleUtils;

	@Autowired
	Common common;

	@Autowired
	UserServiceImpl userserviceimpl;

	@Autowired
	JLPTService jlptService;

	@Value("${string.post.name}")
	private String post;

	@Value("${string.course.anphabe}")
	private String anphabe;

	@Value("${string.reponsitory.local}")
	private String localCourse;

	@Value("${string.role.user}")
	private String roleUser;

	@Value("${string.reponsitory.local}")
	private String localFile;

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
		User u = userRepository.findByEmail(email, "rg");
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
		UserDetails userDetail = googleUtils.buildUser(user);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
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

	@RequestMapping(value = { "tai-khoan/logout" }, method = RequestMethod.GET)
	public String logout(Model model, String logout, String view, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss) throws Exception {
		ss.invalidate();
		URL u = new URL(req.getHeader("Referer"));
		return "redirect:" + u.getPath();
	}

	@RequestMapping(value = { "/vui-tieng-nhat" }, method = RequestMethod.GET)
	public String funnyHome(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss) {
		courseFunServiceImpl.getMenu(model);
		List<CourseFunType> funTypes = (List<CourseFunType>) courseFunTypeRepository.findAll();
		if (funTypes != null) {
			for (int i = 0; i < funTypes.size(); i++) {
				List<CourseFun> cfuns = funTypes.get(i).getCourseFuns();
				if (cfuns != null && cfuns.size() > 0) {
					model.addAttribute("funs", cfuns);
					break;
				}
			}
		}
		return "public/funnyCourse";
	}

	@RequestMapping(value = { "/vui-tieng-nhat/{funName}" })
	public String funDetail(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@PathVariable final String funName) {
		courseFunServiceImpl.getMenu(model);
		String funId = funName.split("-")[0];
		CourseFun cFun = courseFunRepository.findByCourseBgId("CFUN" + funId);
		cFun.setViewCourseFun(cFun.getViewCourseFun() + 1);
		courseFunRepository.save(cFun);
		model.addAttribute("fun", cFun);
		return "public/detailCFun";
	}

	@RequestMapping(value = { "/vui-tieng-nhat/chuyen-muc/{type}" }, method = RequestMethod.GET)
	public String funType(Model model, @PathVariable final Optional<String> type, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) {
		boolean t = type.isPresent();
		List<CourseFunType> funTypes = (List<CourseFunType>) courseFunTypeRepository.findAll();
		if (t) {
			String funTypeId = type.get().substring(0, 1);
			CourseFunType courseFunType = courseFunTypeRepository.findByCourseFunTypeId(funTypeId);
			List<CourseFun> funs = courseFunRepository.findByCourseFunType(courseFunType);
			model.addAttribute("funs", funs);
		} else {
			return "redirect:/van-hoa-nhat-ban";
		}
		List<CourseFun> funmn = courseFunRepository.findCourseFunMn();
		model.addAttribute("funmn", funmn);
		model.addAttribute("funt", funTypes);
		return "public/funnyCourse";
	}

	@RequestMapping(value = { "/khoa-hoc/{courseName}" })
	public String course(Model model, String logout, String view, HttpServletRequest req, HttpServletResponse response,
			HttpSession ss, @PathVariable String courseName) throws Exception {
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
			courseGbService.addTotalNumber(courseIlm.getCourseIlmId());
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
		courseGbService.addTotalNumber(courseIlm.getCourseIlmId());
		if ("COURSELVN6".equals(courseIlm.getCourse().getCourseId())) {
			return "public/anphalb";
		}
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
		UserDetails userDetail = restFb.buildUser(userFb);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		User user = userRepository.findByUserId(userFb.getId());
		if (user == null) {
			user = new User();
			user.setUserId(userFb.getId());
		}
		user.setName(userFb.getName());
		user.setBirthday(userFb.getBirthdayAsDate());
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
		UserDetails userDetail = googleUtils.buildUser(ug);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		User user = userRepository.findByUserId(ug.getUserId());
		if (user == null) {
			user = new User();
			user.setFlg("google");
			Role r = roleRepository.findByRoleId(roleUser);
			user.setRole(r);
			user.setUserName(ug.getUserId());
			user.setUserId(ug.getUserId());
			user.setEmail(ug.getEmail());
		}
		user.setName(ug.getName());
		userRepository.save(user);
		session.setAttribute("user", user);
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

	@RequestMapping(value = { "/van-hoa-nhat-ban" }, method = RequestMethod.GET)
	public String postHome(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss) {
		postServiceImpl.getMenu(model);
		List<PostType> postTypes = (List<PostType>) postTypeRepository.findAll();
		if (postTypes != null) {
			for (int i = 0; i < postTypes.size(); i++) {
				List<Post> posts = postTypes.get(i).getPosts();
				if (posts != null && posts.size() > 0) {
					model.addAttribute("posts", posts);
					break;
				}
			}
		}
		return "public/post";
	}

	@RequestMapping(value = { "/van-hoa-nhat-ban/{postName}" })
	public String postDetail(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@PathVariable final String postName) {
		postServiceImpl.getMenu(model);
		String postId = postName.split("-")[0];
		Post post = postRepository.findByPostId("POST" + postId);
		post.setViewPost(post.getViewPost() + 1);
		postRepository.save(post);
		model.addAttribute("post", post);
		return "public/detailPost";
	}

	@RequestMapping(value = { "/van-hoa-nhat-ban/chuyen-muc/{type}" }, method = RequestMethod.GET)
	public String postType(Model model, @PathVariable final Optional<String> type, HttpServletRequest req,
			HttpServletResponse response, HttpSession ss) {
		boolean t = type.isPresent();
		List<PostType> postTypes = (List<PostType>) postTypeRepository.findAll();
		if (t) {
			String postTypeId = type.get().substring(0, 1);
			List<Post> posts = postRepository.findPostCm(postTypeId);
			model.addAttribute("posts", posts);
		} else {
			return "redirect:/van-hoa-nhat-ban";
		}
		List<Post> postmn = postRepository.findPostMn();
		model.addAttribute("postmn", postmn);
		model.addAttribute("postt", postTypes);
		return "public/post";
	}

	@RequestMapping(value = { "/luyen-de/{courseName}", "/luyen-de" })
	public String examList(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable Optional<String> courseName) throws Exception {
		String cn = "N5";
		if (courseName.isPresent())
			cn = courseName.get();
		Course course = courseRepository.findByCourseName(cn);
		if (course == null) {
			return "404";
		} else {
			List<Course> courses = courseRepository.findByCourse();
			courses.remove(0);
			model.addAttribute("courses", courses);
			model.addAttribute("course", course);
			List<JLPTMenu> je = jlptMenuRepository.findExJLPT(course.getCourseId(), jexercise);
			for (JLPTMenu jlptMenu : je) {
				List<JLPT> jlpts = jlptMenu.getJlpts();
				int k = jlpts.size();
				for (int i = 0; i < k; i++) {
					JLPT jlpt = jlpts.get(i);
					if (jlpt == null || !jlpt.getCourse().equals(course)) {
						jlpts.remove(jlpt);
						i--;
						k--;
					}
				}
			}
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
				List<Map<String, String>> mapJson = jlptService.mapJsonJlpt(jt, jlptId);
				model.addAttribute("lesson_answers", mapJson.get(0).get("lesson_answers"));
				model.addAttribute("lesson_tasks", mapJson.get(0).get("lesson_tasks"));
				model.addAttribute("lesson_lesson", mapJson.get(0).get("lesson_lesson"));
				model.addAttribute("jt", jt);
				model.addAttribute("jlptId", jlptId);
				model.addAttribute("timeout", jt.get(0).getJlptQuestions().get(0).getJlpt().getTimeout());
			}
		}
		return "public/detailJlpt";
	}

	@RequestMapping(value = { "/thi-thu-truc-tuyen" })
	public String examRS(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss)
			throws Exception {
		return "public/rankJlpt";
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

	@RequestMapping("/tai-khoan/thong-tin-ca-nhan")
	public String account(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss) {
		User user = (User) ss.getAttribute("user");
		SimpleDateFormat dfm = new SimpleDateFormat("yyyy-MM-dd");
		if (user.getBirthday() != null) {
			String bir = dfm.format(user.getBirthday());
			model.addAttribute("bir", bir);
		}
		return "public/account";
	}

	@RequestMapping(value = { "/tai-khoan/ket-qua-thi-thu" })
	public String accountRs(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss)
			throws Exception {
		List<Map<String, String>> mapJson = jlptResultService.mapJsonRS();
		model.addAttribute("list_results", mapJson.get(0).get("list_results"));
		model.addAttribute("list_lessons", mapJson.get(0).get("list_lessons"));
		return "public/examRs";
	}

	@RequestMapping("/tai-khoan/change-info")
	@ResponseBody
	public String acChangeInfo(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@RequestParam(name = "field") String field, @RequestParam(name = "value") String value) throws Exception {
		User u = (User) ss.getAttribute("user");
		String change = userserviceimpl.changeInfo(u, field, value);
		return change;
	}

	@RequestMapping("/tai-khoan/change-password")
	@ResponseBody
	public String acChangePass(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@RequestParam(name = "old-password") String op, @RequestParam(name = "new-password") String on)
			throws Exception {
		User u = (User) ss.getAttribute("user");
		String change = userserviceimpl.changePass(u, op, on);
		return change;
	}

	@RequestMapping("/tai-khoan/change-avatar")
	@ResponseBody
	public String acChangeAvatar(Model model, HttpServletRequest request, HttpSession ss,
			@RequestParam("inputAvatar") MultipartFile file) {
		User u = (User) ss.getAttribute("user");
		if (!file.isEmpty()) {
			String local = "/Avatar/";
			String orgName = common.toUrlFriendly(file.getOriginalFilename());
			long size = file.getSize();
			if (size > 1024 * 300)
				return "imagesize";
			if (commonService.checkTypeImg(file)) {
				if (commonService.saveFile(file, local)) {
					commonService.delFile(local + u.getAvatar());
					u.setAvatar(u.getUserId() + ".jpg");
					File fo = new File(localFile + local + orgName);
					File fn = new File(localFile + local + u.getAvatar());
					fo.renameTo(fn);
					userRepository.save(u);
					ss.setAttribute("user", u);
					return "success";
				} else
					return "error";
			} else
				return "imageType";
		}
		return "error";
	}

	@RequestMapping(value = "/password/reset", method = RequestMethod.GET)
	public String resetPass(Model model, HttpServletRequest request, HttpSession ss) {
		return "/public/resetPass";
	}

	@RequestMapping(value = "/password/reset", method = RequestMethod.POST)
	public String resetSendPass(Model model, HttpServletRequest request, HttpSession ss,
			@RequestParam(name = "email") String email) {
		System.out.println(email);
		User user = userRepository.findByEmail(email, "rg");
		if (user == null) {
			model.addAttribute("error", "Email chưa được đăng ký");
			return "/public/resetPass";
		}
		String ms = userserviceimpl.resetPass(user);
		model.addAttribute("success", ms);
		return "/public/resetPass";
	}

	@RequestMapping(value = "/thi-thu/gui-ket-qua", method = RequestMethod.POST)
	@ResponseBody
	public String sendRs(Model model, HttpServletRequest request, HttpSession ss, @RequestBody JLPTResultJson dt)
			throws Exception {
		System.out.println("ss");
		dt.setJlptRsId("JLPTE" + dt.getLesson_id());
		if (jlptResultService.doSaveJlptRs(dt))
			return "success";
		else
			return "error";
	}

	@RequestMapping(value = "/tai-khoan/get-test-result-info", method = RequestMethod.POST)
	@ResponseBody
	public String viewRs(Model model, HttpServletRequest request, HttpSession ss,
			@RequestParam(value = "rs_id") String id) throws Exception {
		// jlptResultService.mapJsonS();
		String jlptId = "JLPTE" + jlptService.setNumJLPTId(id);
		List<JLPTQType> jt = jlptQTypeRepository.findQQuestion(jlptId);
		JSONObject rs = new JSONObject();
		if (jt.size() > 0) {
			List<Map<String, String>> mapJson = jlptService.mapJsonJlpt(jt, jlptId);
			JSONArray tasks = (JSONArray) JSONSerializer.toJSON(mapJson.get(0).get("lesson_tasks"));
			JSONObject answers = (JSONObject) JSONSerializer.toJSON(mapJson.get(0).get("lesson_answers"));
			rs.put("tasks", tasks);
			rs.put("answers", answers);
		}
		String s = rs.toString();
		return rs.toString();
	}

	@RequestMapping(value = { "/tai-khoan/delete-test-result" })
	@ResponseBody
	public String delRs(Model model, HttpServletRequest req, HttpServletResponse response, HttpSession ss,
			@RequestParam(value = "rs_id") String id) throws Exception {
		String jlptId = "RS_JLPT_" + jlptResultService.setNumRsId(id);
		JLPTResult jlptResult = jlptRsRepository.findByJlptRsId(jlptId);
		if (jlptResult != null)
			jlptRsRepository.delete(jlptResult);
		return "success";
	}
}
