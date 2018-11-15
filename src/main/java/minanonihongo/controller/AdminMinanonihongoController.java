
package minanonihongo.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
import minanonihongo.model.Post;
import minanonihongo.model.User;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseIlmTypeRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.DocRepository;
import minanonihongo.service.Common;
import minanonihongo.service.CommonService;
import minanonihongo.service.CourseIlmService;
import minanonihongo.service.DocServiceImpl;
import minanonihongo.service.VocaCourseIlmService;

@Controller
public class AdminMinanonihongoController {

	@Autowired
	CourseRepository courseRepository;

	@Autowired
	DocRepository docRepository;

	@Autowired
	CourseIlmRepository courseIlmRepository;

	@Autowired
	CourseIlmTypeRepository courseIlmTypeRepository;

	@Autowired
	CourseIlmService courseIlmService;

	@Autowired
	DocServiceImpl docServiceImpl;

	@Autowired
	CommonService commonService;

	@Autowired
	VocaCourseIlmService vocaCourseIlmService;

	@Autowired
	Common common;

	@Value("${string.reponsitory.local}")
	private String localFile;

	@GetMapping("/admin")
	public String home(Model model) {
		common.getMenu(model);
		return "/private/home";
	}

	@GetMapping("/admin/courses/{courseName}")
	public String courses(Model model, @PathVariable String courseName, HttpServletRequest request) {
		common.getMenu(model);
		Course course = courseRepository.findByCourseName(courseName);
		String mess = request.getParameter("mess_up");
		if(mess != null) {
			model.addAttribute("course_up", courseIlmRepository.findByCourseIlmId(mess));
		}
		if (course != null) {
			List<CourseIlm> courseIlms = courseIlmRepository.findByCourse(course);
			model.addAttribute("course", course);
			model.addAttribute("courseIlms", courseIlms);
		} else {
			return "404";
		}
		return "/private/courses";
	}

	// show view form insert formation
	@RequestMapping(value = "/admin/course/them-bai-hoc-moi/{course}", method = RequestMethod.GET)
	public String course(Model model, HttpServletRequest request, HttpSession session) {
		common.getMenu(model);
		// set model
		// model.addAttribute("courseForm", new CourseIlm());
		// model.addAttribute("postId", commonService.autoPostid());
		return "/private/addCourse";
	}

	@RequestMapping(value = "/admin/upload-doc", method = RequestMethod.POST)
	public String uploadDoc(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("attachment") MultipartFile file, @RequestParam("course-name") String courseName,
			@RequestParam("file-descrip-doc") String descrip) {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null)
			return "error";
		File uploadDir = new File(localFile);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String fileName = null;
		if (!file.isEmpty()) {
			try {
				fileName = common.toUrlFriendly(file.getOriginalFilename());
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(
						new FileOutputStream(new File(localFile + courseName + "/doc/" + fileName)));
				buffStream.write(bytes);
				buffStream.close();
				if (!docServiceImpl.doSaveDoc(fileName, course, descrip, session)) {
					return "error";
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return "error";
			}
		}
		model.addAttribute("course", course);
		return "/private/upDoc";
	}
	@RequestMapping(value = "/admin/upload-audio", method = RequestMethod.POST)
	public String uploadAudio(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("file") MultipartFile file,@RequestParam("c") String courseName) {
		Course course = courseRepository.findByCourseName(courseName);
		if (course == null)
			return "error";
		File uploadDir = new File(localFile);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String fileName = null;
		if (!file.isEmpty()) {
			try {
				fileName = common.toUrlFriendly(file.getOriginalFilename());
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(
					new FileOutputStream(new File(localFile + courseName + "/rb/" + fileName)));
				buffStream.write(bytes);
				buffStream.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
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
			File file = new File(localFile + course.getCourseName() + "/doc/" + document.getLocaFileDoc());
			file.delete();
			docRepository.deleteDocId(id);
		}
		model.addAttribute("course", course);
		return "/private/upDoc";
	}

	@RequestMapping(value = "/admin/dele-course/{courseId}/{id}", method = RequestMethod.POST)
	public String deleCourse(Model model, HttpServletRequest request, HttpSession session,
			@PathVariable final String id, @PathVariable final String courseId) {
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);
		Course course = courseRepository.findByCourseId(courseId);
		if (courseIlm != null && course != null) {
			String f_img = localFile + course.getCourseName() + "/img/" + courseIlm.getLocaFileImg();
			String f_fvd = localFile + course.getCourseName() + "/img/" + courseIlm.getLocaFileImg();
			List<CourseIlm> courseIlms = courseIlmRepository.findByCourse(course);
			model.addAttribute("courseIlms", courseIlms);
			if (courseIlmService.deleCourse(courseIlm)) {
				File fimg = new File(f_img);
				fimg.delete();
				File fvd = new File(f_fvd);
				fvd.delete();
			}
		}
		return "/private/upCourse";
	}

	@RequestMapping(value = "/admin/add-post", method = RequestMethod.POST)
	public String doSave(@ModelAttribute("courseForm") CourseIlm courseForm, Model model, HttpSession session,
			@RequestParam("edit-voca") String editVoca, @RequestParam("list-current") String listCurrent,
			@RequestParam("dele-old") String deleOld) throws Exception {
		// get session userId
		User user = (User) session.getAttribute("user");
		courseForm.setUser(user);
		courseIlmService.doSaveCourse(courseForm);
		// model.addAttribute("message", messageSave);
		model.addAttribute("courseForm", new CourseIlm());
		return "home";
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

	@RequestMapping(value = "/admin/fix-course", method = RequestMethod.POST)
	public String fixUpCourse(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("file-img") MultipartFile img, @RequestParam("file-video") MultipartFile video,
			@ModelAttribute("courseIlmForm") CourseIlm courseIlmForm, @RequestParam("list-current") String listCurrent,
			@RequestParam("dele-old") String deleOld) throws Exception {
		CourseIlm cIlm = courseIlmRepository.findByCourseIlmId(courseIlmForm.getCourseIlmId());
		courseIlmForm.setUser((User) session.getAttribute("user"));
		if (video.isEmpty()) {
			courseIlmForm.setLocaFileCourse(cIlm.getLocaFileCourse());
		} else {
			String fileName = null;
			try {
				fileName = common.toUrlFriendly(video.getOriginalFilename());
				byte[] bytes = video.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(
						new File(localFile + cIlm.getCourse().getCourseName() + "/video/" + fileName)));
				buffStream.write(bytes);
				buffStream.close();
				courseIlmForm.setLocaFileCourse(fileName);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return "error";
			}
		}
		if (img.isEmpty()) {
			courseIlmForm.setLocaFileImg(cIlm.getLocaFileImg());
		} else {
			String fileName = null;
			try {
				fileName = common.toUrlFriendly(img.getOriginalFilename());
				byte[] bytes = img.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(
						new File(localFile + cIlm.getCourse().getCourseName() + "/img/" + fileName)));
				buffStream.write(bytes);
				buffStream.close();
				courseIlmForm.setLocaFileImg(fileName);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return "error";
			}
		}
		vocaCourseIlmService.setVocaCourseIlm(listCurrent, deleOld, courseIlmForm);
		String mess	 = courseIlmForm.getCourseIlmId();
		return "redirect:/admin/courses/" + courseIlmForm.getCourse().getCourseName() + "?mess_up=" + mess;
	}

	// show view form insert formation
	@RequestMapping(value = "/admin/add-post", method = RequestMethod.GET)
	public String registration(Model model, HttpServletRequest request, HttpSession session) {

		// set model
		model.addAttribute("postForm", new Post());
		model.addAttribute("postId", commonService.autoPostid());
		return "h";
	}

	// // Insert staff information
	// @RequestMapping(value = "/admin/add-post", method = RequestMethod.POST)
	// public String insertOrupdateUser(@ModelAttribute("postForm") Post postForm,
	// Model model, HttpSession session) throws Exception {
	// // get session userId
	// User user = (User) session.getAttribute("user");
	//
	// postForm.setUser(user);
	// postServiceImpl.doSave(postForm);
	// model.addAttribute("message", messageSave);
	// model.addAttribute("userId", userserviceimpl.autoCodePostId());
	// model.addAttribute("userForm", new User());
	// return "AddUser";
	// }
	//
	// // Update Staff information
	// @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	// public String updateUser(@ModelAttribute("userForm") User userForm,
	// BindingResult bindingResult, Model model,
	// HttpSession session, final RedirectAttributes redirectAttributes) throws
	// ParseException {
	// updateuserValidator.validate(userForm, bindingResult);
	//
	// // contructor user
	// List<Role> lstrole = (List<Role>) roleRepository.findAll();
	// List<Timezone> lstTimezone = (List<Timezone>) timezoneRepository.findAll();
	// String sessionUserid = (String) session.getAttribute("userid");
	// User u = new User();
	// u = userRepository.findByUserId(userForm.getUserId());
	//
	// // check error input
	// if (bindingResult.hasErrors()) {
	// redirectAttributes.addFlashAttribute("bindingResult", bindingResult);
	// redirectAttributes.addFlashAttribute("userForm", userForm);
	// return "redirect:/updateUser" + "?userid=" + userForm.getUserId();
	// }
	//
	// model.addAttribute("lstRole", lstrole);
	// model.addAttribute("lstTimezone", lstTimezone);
	// userForm.setCreateId(u.getCreateId());
	// userForm.setUpdateId(sessionUserid);
	// userserviceimpl.insertOrupdate(userForm);
	// session.setAttribute("userTimezone", userForm.getTimezone().getValue());
	// session.setAttribute("userTimezoneName", userForm.getTimezone().getName());
	// return "redirect:/updateUser" + "?userid=" + userForm.getUserId() +
	// "&updateUser=" + messageInfo;
	// }
	//
	// // Show view form update information
	// @RequestMapping(value = "/updateUser", method = RequestMethod.GET)
	// public String updateInfo(Model model, HttpServletRequest request,
	// @ModelAttribute("userForm") final User userForm, Locale locale) {
	//
	// // get parameter date
	// String userId = request.getParameter("userid");
	// String resetPass = request.getParameter("resetPass");
	// String updateuser = request.getParameter("updateUser");
	//
	// User user = new User();
	// user = userserviceimpl.searchUserId(userId);
	// List<Role> lstrole = (List<Role>) roleRepository.findAll();
	// List<Timezone> lstTimezone = (List<Timezone>) timezoneRepository.findAll();
	// Map<String, String> mapStatus = new HashMap<String, String>();
	// String localeString = locale.toString();
	// // Set date of week English
	// if (localeString.equalsIgnoreCase("en")) {
	// mapStatus = commonservice.mapStatus("en");
	// } else if (localeString.equalsIgnoreCase("ja_JP")) {
	// mapStatus = commonservice.mapStatus("ja_JP");
	// }
	// // set model
	// model.addAttribute("listStaus", mapStatus);
	// model.addAttribute("lstRole", lstrole);
	// model.addAttribute("lstTimezone", lstTimezone);
	// model.addAttribute("userForm", user);
	//
	// if (resetPass != null) {
	// // set message value "Reseted Password Success!"
	//
	// model.addAttribute("message", messagePass);
	// }
	// if (updateuser != null) {
	// // set message value "Update Information Success!"
	// model.addAttribute("message", messageInfo);
	// }
	//
	// if (model.asMap().containsKey("bindingResult")) {
	// model.addAttribute("org.springframework.validation.BindingResult.userForm",
	// model.asMap().get("bindingResult"));
	// }
	//
	// return "UpdateUser";
	// }
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
}
