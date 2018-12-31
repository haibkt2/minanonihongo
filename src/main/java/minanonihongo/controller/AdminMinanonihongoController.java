
package minanonihongo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import minanonihongo.model.Course;
import minanonihongo.model.CourseFun;
import minanonihongo.model.CourseFunType;
import minanonihongo.model.CourseGlobal;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTMenu;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTQuestion;
import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.model.User;
import minanonihongo.repository.CourseFunRepository;
import minanonihongo.repository.CourseFunTypeRepository;
import minanonihongo.repository.CourseGlobalRepository;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.DocRepository;
import minanonihongo.repository.JLPTMenuRepository;
import minanonihongo.repository.JLPTQTypeRepository;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;
import minanonihongo.repository.UserRepository;
import minanonihongo.service.Common;
import minanonihongo.service.CommonService;
import minanonihongo.service.CourseFunServiceImpl;
import minanonihongo.service.CourseGbService;
import minanonihongo.service.CourseIlmService;
import minanonihongo.service.DocServiceImpl;
import minanonihongo.service.ExamCourseIlmService;
import minanonihongo.service.JLPTService;
import minanonihongo.service.PostServiceImpl;
import minanonihongo.service.VocaCourseIlmService;

@Controller
public class AdminMinanonihongoController {

	@Autowired
	CourseRepository courseRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	DocRepository docRepository;
	@Autowired
	JLPTRepository jlptRepository;

	@Autowired
	CourseIlmRepository courseIlmRepository;

	@Autowired
	CourseIlmTypeRepository courseIlmTypeRepository;

	@Autowired
	JLPTMenuRepository jlptMenuRepository;

	@Autowired
	JLPTQTypeRepository jlptQTypeRepository;

	@Autowired
	CourseIlmService courseIlmService;

	@Autowired
	DocServiceImpl docServiceImpl;

	@Autowired
	CommonService commonService;

	@Autowired
	CourseGbService courseGbService;

	@Autowired
	PostServiceImpl postServiceImpl;

	@Autowired
	CourseFunServiceImpl courseFunServiceImpl;

	@Autowired
	ExamCourseIlmService examCourseIlmService;

	@Autowired
	CourseGlobalRepository courseGlobalRepository;

	@Autowired
	VocaCourseIlmService vocaCourseIlmService;

	@Autowired
	JLPTService jlptService;

	@Autowired
	PostRepository postRepository;

	@Autowired
	PostTypeRepository postTypeRepository;

	@Autowired
	CourseFunTypeRepository courseFunTypeRepository;

	@Autowired
	CourseFunRepository courseFunRepository;

	@Autowired
	Common common;

	@Value("${string.jlpt.exercise}")
	private String jexercise;

	@Value("${string.reponsitory.local}")
	private String localFile;

	@GetMapping("/admin")
	public String home(Model model) {
		common.getMenu(model);
		List<Course> courses = (List<Course>) courseRepository.findAll();
		model.addAttribute("courses", courses);
		return "/private/home";
	}

	@RequestMapping(value = "/admin/mn-mondai", method = RequestMethod.GET)
	public String mnMondai(Model model, HttpServletRequest request, HttpSession session) {
		common.getMenu(model);
		List<JLPTQType> jlptqTypes = (List<JLPTQType>) jlptQTypeRepository.findAll();
		model.addAttribute("qt", jlptqTypes);
		return "private/mondai";
	}

	@RequestMapping(value = "/admin/mondai-descrip/{id}/{descrip}", method = RequestMethod.POST)
	public String upMondai(Model model, HttpServletRequest request, @PathVariable final String id,
			@PathVariable final String descrip) {
		JLPTQType qT = jlptQTypeRepository.findByJlptQTypeId(id);
		if (qT == null) {
			qT = new JLPTQType();
			qT.setJlptQTypeName(descrip);
			qT.setJlptTypeId(jlptService.setJlptQTId());
		} else {
			qT.setJlptQTypeName(descrip);
		}
		jlptQTypeRepository.save(qT);
		List<JLPTQType> jlptqTypes = (List<JLPTQType>) jlptQTypeRepository.findAll();
		model.addAttribute("qt", jlptqTypes);
		return "/private/upMondai";
	}

	@RequestMapping(value = "/admin/fix-fun", method = RequestMethod.GET)
	public String fixFun(Model model, HttpServletRequest request, HttpSession session, @RequestParam("id") String id) {
		common.getMenu(model);
		CourseFun courseFun = courseFunRepository.findByCourseBgId(id);
		if (courseFun == null)
			return "error";
		model.addAttribute("funForm", courseFun);
		return "private/upFun";
	}

	@RequestMapping(value = "/admin/update-fun", method = RequestMethod.POST)
	public String doSaveFun(@ModelAttribute("funForm") CourseFun funForm, Model model, HttpSession session,
			@RequestParam("file-img") MultipartFile img, @RequestParam("fun-t-id") String fnId) throws Exception {
		CourseFun fun = courseFunRepository.findByCourseBgId(funForm.getCourseBgId());
		CourseFunType courseFunType = courseFunTypeRepository.findByCourseFunTypeId(fnId);
		funForm.setCourseFunType(courseFunType);
		if (fun == null) {
			fun = new CourseFun();
			funForm.setCreateDate(commonService.currentDate());
			fun.setCourseFunImg(null);
		} else
			funForm.setCreateDate(fun.getCreateDate());
		funForm.setUpdateDate(commonService.currentDate());
		if (img.isEmpty()) {
			funForm.setCourseFunImg(fun.getCourseFunImg());
		} else {
			String fileName = common.toUrlFriendly(img.getOriginalFilename());
			String local = "/Fun/" + common.toUrlFriendly(funForm.getCourseFunType().getCourseFunTypeName()) + "/";
			if (!commonService.saveFile(img, local)) {
				return "error";
			}
			funForm.setCourseFunImg(fileName);
		}
		courseFunRepository.save(funForm);
		return "redirect:/admin/fun-course/" + courseFunType.getCourseFunTypeId();
	}

	@GetMapping("/admin/fun-course/{funTypeId}")
	public String fun(Model model, @PathVariable String funTypeId) {
		common.getMenu(model);
		CourseFunType funType = courseFunTypeRepository.findByCourseFunTypeId(funTypeId.split("-")[0]);
		List<CourseFun> funs = courseFunRepository.findByCourseFunType(funType);
		model.addAttribute("fun", funs);
		model.addAttribute("funt", funType);
		return "/private/funs";
	}

	@RequestMapping(value = "/admin/add-fun", method = RequestMethod.GET)
	public String addFun(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("funType") String fT) {
		common.getMenu(model);
		CourseFunType funType = courseFunTypeRepository.findByCourseFunTypeId(fT);
		if (funType == null)
			return "error";
		CourseFun funForm = new CourseFun();
		funForm.setCourseBgId(courseFunServiceImpl.setCFId());
		funForm.setCourseFunType(funType);
		model.addAttribute("funForm", funForm);
		return "private/upFun";
	}

	@GetMapping("/admin/posts/{postTypeId}")
	public String post(Model model, @PathVariable String postTypeId) {
		common.getMenu(model);
		PostType postType = postTypeRepository.findByPostTypeId(postTypeId.split("-")[0]);
		List<Post> posts = postRepository.findByPostType(postType);
		model.addAttribute("post", posts);
		model.addAttribute("postT", postType);
		return "/private/posts";
	}

	@GetMapping("/admin/courses/{courseName}")
	public String courses(Model model, @PathVariable String courseName, HttpServletRequest request) {
		common.getMenu(model);
		Course course = courseRepository.findByCourseName(courseName);
		if (course != null) {
			List<CourseIlm> courseIlms = courseIlmRepository.findByCourse(course);
			model.addAttribute("course", course);
			model.addAttribute("courseIlms", courseIlms);
		} else {
			return "404";
		}
		return "/private/courses";
	}

	@RequestMapping(value = { "/admin/update-course/update-exam" }, method = RequestMethod.POST)
	public String updateExam(Model model, HttpServletRequest request, HttpSession session,
			@ModelAttribute("courseIlmForm") CourseIlm courseIlmForm, @RequestParam("exam") String exam,
			@RequestParam("delQt") String del) throws Exception {
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(courseIlmForm.getCourseIlmId());
		examCourseIlmService.setExamCourseIlm(exam, del, courseIlm);
		return "redirect:/admin/courses/" + courseIlm.getCourse().getCourseName();
	}

	@RequestMapping(value = "/admin/course/them-bai-hoc-moi/{course}", method = RequestMethod.GET)
	public String course(Model model, HttpServletRequest request, HttpSession session) {
		common.getMenu(model);
		return "/private/addCourse";
	}

	@RequestMapping(value = "/admin/upload-doc", method = RequestMethod.POST)
	public String uploadDoc(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("attachment") MultipartFile file, @RequestParam("course-name") String courseName,
			@RequestParam("file-descrip-doc") String descrip) {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null)
			return "error";
		if (!file.isEmpty()) {
			String local = courseName + "/doc/";
			String fileName = common.toUrlFriendly(file.getOriginalFilename());
			if (!commonService.saveFile(file, local)) {
				return "error";
			}
			if (!docServiceImpl.doSaveDoc(fileName, course, descrip, session)) {
				return "error";
			}
		}
		model.addAttribute("course", course);
		return "/private/upDoc";
	}

	@RequestMapping(value = "/admin/upload-audio")
	public String uploadAudio(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("file") MultipartFile file, @RequestParam("c") String courseName) {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null)
			return "error";
		if (!file.isEmpty()) {
			String local = courseName + "/rb/";
			if (!commonService.saveFile(file, local)) {
				return "error";
			}
		}
		model.addAttribute("course", course);
		return "/private/upDoc";
	}

	@RequestMapping(value = "/admin/dele-doc/{courseId}/{id}", method = RequestMethod.POST)
	public String deleDoc(Model model, HttpServletRequest request, HttpSession session, @PathVariable final String id,
			@PathVariable final String courseId) {
		Document document = docRepository.findByDocId(id);
		Course course = courseRepository.findByCourseId(courseId);
		if (document != null && course != null) {
			commonService.delFile(course.getCourseName() + "/doc/" + document.getLocaFileDoc());
			docRepository.deleteDocId(id);
		}
		model.addAttribute("course", course);
		return "/private/upDoc";
	}

	@RequestMapping(value = "/admin/dele-course/{courseId}/{id}", method = RequestMethod.POST)
	@ResponseBody
	public String deleCourse(Model model, HttpServletRequest request, HttpSession session,
			@PathVariable final String id, @PathVariable final String courseId) {
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);
		if (courseIlm != null) {
			courseIlmService.deleCourse(courseIlm);
		}
		return "ss";
	}

	@RequestMapping(value = "/admin/add-course", method = RequestMethod.GET)
	public String addCourse(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("course") String c) {
		common.getMenu(model);
		Course course = courseRepository.findByCourseName(c);
		List<CourseIlm> courseIlms = (List<CourseIlm>) courseIlmRepository.findByCourse(course);
		CourseIlm courseIlm = new CourseIlm();
		if (courseIlms.size() > 0) {
			courseIlm.setCourseIlmId(courseIlms.get(courseIlms.size() - 1).getCourseIlmId());
		}
		courseIlm.setCourse(course);
		String cilmId = courseIlmService.setCourseIlmId(courseIlm);
		courseIlm.setCourseIlmId(cilmId);
		List<CourseIlmType> courseIlmType = (List<CourseIlmType>) courseIlmTypeRepository.findAll();
		model.addAttribute("courseIlmForm", courseIlm);
		model.addAttribute("courseIlmType", courseIlmType);
		return "/private/upCourseIlm";
	}

	@RequestMapping(value = "/admin/fix-course", method = RequestMethod.GET)
	public String fixCourse(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("id") String id) {
		common.getMenu(model);
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);
		List<CourseIlmType> courseIlmType = (List<CourseIlmType>) courseIlmTypeRepository.findAll();
		model.addAttribute("courseIlmForm", courseIlm);
		model.addAttribute("courseIlmType", courseIlmType);
		return "/private/upCourseIlm";
	}

	@RequestMapping(value = "/admin/update-course", method = RequestMethod.POST)
	public String fixUpCourse(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("file-img") MultipartFile img, @RequestParam("file-video") MultipartFile video,
			@ModelAttribute("courseIlmForm") CourseIlm courseIlmForm, @RequestParam("list-current") String listCurrent,
			@RequestParam("dele-old") String deleOld, HttpServletResponse response) throws Exception {
		response.addHeader("X-XSS-Protection", "0");
		CourseIlm cIlm = courseIlmRepository.findByCourseIlmId(courseIlmForm.getCourseIlmId());
		if (cIlm == null || cIlm.getCourse() == null) {
			cIlm = new CourseIlm();
			cIlm.setCreateDate(commonService.currentDate());
			String cId = courseIlmForm.getCourseIlmId().substring(0, 2);
			if ("N6".equals(cId))
				cId = "Alphabet";
			courseIlmForm.setCourse(courseRepository.findByCourseName(cId));
			// cIlm.setCourseGlobal(courseGbService.setcourseGlobal(courseIlmForm));
		} else {
			courseIlmForm.setCourse(cIlm.getCourse());
		}
		courseIlmForm.setUser((User) session.getAttribute("user"));
		if (video.isEmpty()) {
			courseIlmForm.setLocaFileCourse(cIlm.getLocaFileCourse());
		} else {
			String fileName = common.toUrlFriendly(video.getOriginalFilename());
			String local = courseIlmForm.getCourse().getCourseName() + "/video/";
			if (!commonService.saveFile(video, local)) {
				return "error";
			}
			courseIlmForm.setLocaFileCourse(fileName);
		}
		if (img.isEmpty()) {
			courseIlmForm.setLocaFileImg(cIlm.getLocaFileImg());
		} else {
			String fileName = common.toUrlFriendly(img.getOriginalFilename());
			String local = courseIlmForm.getCourse().getCourseName() + "/img/";
			if (!commonService.saveFile(img, local)) {
				return "error";
			}
			courseIlmForm.setLocaFileImg(fileName);
		}
		courseIlmForm.setCourseGlobal(cIlm.getCourseGlobal());
		courseIlmForm.setExams(cIlm.getExams());
		courseIlmForm.setCreateDate(cIlm.getCreateDate());
		courseIlmForm.setCourseIlmFlg("1");
		courseIlmForm.setUpdateDate(commonService.currentDate());
		courseIlmRepository.save(courseIlmForm);
		vocaCourseIlmService.setVocaCourseIlm(listCurrent, deleOld, courseIlmForm);
		CourseGlobal courseGlobal = courseGbService.setcourseGlobal(courseIlmForm);
		courseGlobalRepository.save(courseGlobal);
		common.getMenu(model);
		model.addAttribute("courseIlmForm", courseIlmForm);
		return "/private/upExam";
	}

	@RequestMapping(value = "/admin/add-post", method = RequestMethod.GET)
	public String addPost(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("postType") String pT) {
		common.getMenu(model);
		PostType postType = postTypeRepository.findByPostTypeId(pT);
		if (postType == null)
			return "error";
		Post postForm = new Post();
		postForm.setPostId(postServiceImpl.setPostId());
		postForm.setPostType(postType);
		model.addAttribute("postForm", postForm);
		return "private/upPost";
	}

	@RequestMapping(value = "/admin/fix-post", method = RequestMethod.GET)
	public String fixPost(Model model, HttpServletRequest request, HttpSession session, @RequestParam("id") String id) {
		common.getMenu(model);
		Post post = postRepository.findByPostId(id);
		if (post == null)
			return "error";
		model.addAttribute("postForm", post);
		return "private/upPost";
	}

	@RequestMapping(value = "/admin/update-post", method = RequestMethod.POST)
	public String doSave(@ModelAttribute("postForm") Post postForm, Model model, HttpSession session,
			@RequestParam("file-img") MultipartFile img, @RequestParam("post-t-id") String ptId) throws Exception {
		// get session userId
		Post post = postRepository.findByPostId(postForm.getPostId());
		PostType postType = postTypeRepository.findByPostTypeId(ptId);
		postForm.setPostType(postType);
		if (post == null) {
			post = new Post();
			postForm.setCreateDate(commonService.currentDate());
			post.setPostImg(null);
		} else
			postForm.setCreateDate(post.getCreateDate());
		User user = (User) session.getAttribute("user");
		postForm.setUser(user);
		postForm.setUpdateDate(commonService.currentDate());
		postForm.setPostFlg("1");
		if (img.isEmpty()) {
			postForm.setPostImg(post.getPostImg());
		} else {
			String fileName = common.toUrlFriendly(img.getOriginalFilename());
			String local = "/Post/" + common.toUrlFriendly(postForm.getPostType().getPostTypeName()) + "/";
			if (!commonService.saveFile(img, local)) {
				return "error";
			}
			postForm.setPostImg(fileName);
		}
		postRepository.save(postForm);
		return "redirect:/admin/posts/" + postType.getPostTypeId();
	}

	@RequestMapping(value = "/admin/upload-doc-descrip/{id}/{descrip}", method = RequestMethod.POST)
	public String uploadMtDoc(Model model, HttpServletRequest request, @PathVariable final String id,
			@PathVariable final String descrip) {
		Document doc = docRepository.findByDocId(id);
		if (doc == null) {
			return "error";
		} else {
			doc.setDescrip(descrip);
			docRepository.save(doc);
			Course course = courseRepository.findByCourseId(doc.getCourse().getCourseId());
			model.addAttribute("course", course);
		}
		return "/private/upDoc";
	}

	@RequestMapping(value = { "/admin/exam/{courseName}", "/admin/exam" })
	public String examList(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable Optional<String> courseName) throws Exception {
		common.getMenu(model);
		boolean t = courseName.isPresent();
		String cN = "N5";
		if (t)
			cN = courseName.get();
		Course course = courseRepository.findByCourseName(cN);
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
		return "/private/exam";
	}

	@RequestMapping(value = { "/admin/add-exam/{courseName}" })
	public String addJLPT(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable String courseName) throws Exception {
		common.getMenu(model);
		Course course = courseRepository.findByCourseName(courseName);
		List<JLPTMenu> jlptMenu = (List<JLPTMenu>) jlptMenuRepository.findAll();
		if (course == null) {
			return "404";
		} else {
			JLPT jlptForm = new JLPT();
			jlptForm.setJlptId(jlptService.setJlptId());

			List<JLPTQType> jlptqTypes = (List<JLPTQType>) jlptQTypeRepository.findAll();
			model.addAttribute("mondai", jlptqTypes);
			model.addAttribute("jlptForm", jlptForm);
			model.addAttribute("jlptMn", jlptMenu);
		}
		return "/private/upJLPT";
	}

	@RequestMapping(value = { "/admin/fix-exam/{courseName}/{examName}" })
	public String fixJLPT(Model model, HttpServletRequest req, HttpServletResponse response,
			@PathVariable String courseName, @PathVariable String examName) throws Exception {
		common.getMenu(model);
		Course course = courseRepository.findByCourseName(courseName);
		List<JLPTMenu> jlptMenu = (List<JLPTMenu>) jlptMenuRepository.findAll();
		List<JLPTQType> mondai = (List<JLPTQType>) jlptQTypeRepository.findAll();
		if (course == null) {
			return "404";
		} else {
			String jlptId = "JLPTE" + examName.split("-")[0];
			JLPT jlpt = jlptRepository.findByJlptId(jlptId);
			List<JLPTQType> jt = jlptQTypeRepository.findQQuestion(jlptId);
			for (JLPTQType jlptqType : jt) {
				List<JLPTQuestion> jlptQuestions = jlptqType.getJlptQuestions();
				int k = jlptQuestions.size();
				for (int i = 0; i < k; i++) {
					JLPTQuestion jlptQuestion = jlptQuestions.get(i);
					if (jlptQuestion == null || !jlptQuestion.getJlpt().equals(jlpt)) {
						jlptQuestions.remove(jlptQuestion);
						i--;
						k--;
					}
				}
				if (jlptqType.getJlptQuestions() == null || jlptqType.getJlptQuestions().size() == 0)
					jt.remove(jlptqType);
			}
			JLPT jlptForm = jlptRepository.findByJlptId(jlptId);
			model.addAttribute("jt", jt);
			model.addAttribute("mondai", mondai);
			model.addAttribute("jlptForm", jlptForm);
			model.addAttribute("jlptMn", jlptMenu);
		}
		return "/private/upJLPT";
	}

	@RequestMapping(value = { "/admin/exam/{courseName}/update/{examName}", "/admin/exam/{courseName}/update" })
	public String saveJLPT(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("exam") String exam, @RequestParam("timeout") String timeout,
			@PathVariable Optional<String> examName, @RequestParam("delQt") String del,
			@RequestParam("cou-name") String courseName, @RequestParam("delAn") String delAn,
			@ModelAttribute("jlptForm") JLPT jlptForm) throws Exception {
		jlptForm.setTimeout(timeout);
		Course course = courseRepository.findByCourseName(courseName);
		jlptForm.setCourse(course);
		jlptService.delAns(delAn);
		jlptService.setJLPT(exam, del, jlptForm);
		return "redirect:/admin/exam/" + courseName;
	}
}
