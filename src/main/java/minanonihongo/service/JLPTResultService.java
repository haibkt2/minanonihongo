
package minanonihongo.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTResult;
import minanonihongo.model.JLPTResultJson;
import minanonihongo.model.User;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.JLPTRsRepository;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class JLPTResultService {

	@Autowired
	private CommonService commonService;

	@Autowired
	private Common common;

	@Autowired
	JLPTRsRepository jlptRsRepository;

	@Autowired
	JLPTRepository jlptRepository;

	@Autowired
	HttpSession ss;

	public boolean doSaveJlptRs(JLPTResultJson dt) throws Exception {
		User user = (User) ss.getAttribute("user");
		String jlptId = dt.getJlptRsId();
		JLPTResult jlptResult = jlptRsRepository.findJLPTResult(user.getUserId(), jlptId);
		if (jlptResult == null) {
			jlptResult = new JLPTResult();
			jlptResult.setJlptRsId(setJlptRsId());
		}
		JLPT jlpt = jlptRepository.findByJlptId(jlptId);
		jlptResult.setCreated(dt.getCreated());
		jlptResult.setData(dt.getData());
		jlptResult.setGrade(dt.getGrade());
		jlptResult.setJlpt(jlpt);
		jlptResult.setPassed(dt.getPassed());
		jlptResult.setUser(user);
		jlptResult.setTotalGrade(dt.getTotal_grade());
		jlptResult.setCourse(dt.getCourse());
		jlptRsRepository.save(jlptResult);
		return true;
	}

	public String setJlptRsId() {
		List<JLPTResult> jlptrs = (List<JLPTResult>) jlptRsRepository.findAll();
		String jlptRsId = "RS_JLPT_0001";
		if (jlptrs.size() > 0) {
			int id = Integer.parseInt(jlptrs.get(jlptrs.size() - 1).getJlptRsId().substring(8, 12)) + 1;
			String countUsId = "" + id;
			jlptRsId = "RS_JLPT_".concat("" + setNumRsId(countUsId));
		}
		return jlptRsId;
	}

	public String setNumRsId(String id) {
		if (id.trim().length() < 4) {
			int count = 4 - id.trim().length();
			for (int i = 0; i < count; i++) {
				id = "0" + id;
			}
		}
		return id;
	}

	public List<Map<String, String>> mapJsonRS() throws Exception {
		User user = (User) ss.getAttribute("user");
		List<JLPTResult> jlptResults = jlptRsRepository.findByUser(user);
		List<Map<String, String>> jsons = new ArrayList<>();
		JSONArray list_lessons = new JSONArray(); // result_ListLessons
		JSONObject list_results = new JSONObject(); // result_ListResults
		for (JLPTResult jlptResult : jlptResults) {
			JLPT jlpt = jlptResult.getJlpt();
			String jlptId = jlpt.getJlptId().substring(5, 13);
			String title = jlpt.getJlptMn().getJlptMenuName() + " - " + jlpt.getCourse().getCourseName();
			list_lessons.add(getListLessons(Integer.parseInt(jlptId), jlpt.getJlptName(), title));
			JSONArray ans = new JSONArray();
			String lsId = jlptResult.getJlptRsId().split("_")[2];
			SimpleDateFormat dfm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String create = dfm.format(jlptResult.getCreated());
			ans.add(getListResults(lsId, jlptResult.getGrade(), jlptResult.isPassed(), create,
					jlptResult.getTotalGrade(), jlptResult.getData()));
			list_results.put(Integer.parseInt(jlptId), ans);
		}

		Map<String, String> map = new HashMap<>();
		map.put("list_results", list_results.toString());
		map.put("list_lessons", list_lessons.toString());
		jsons.add(map);
		return jsons;
	}

	public JSONObject getListResults(String lesson_id, String grade, boolean passed, String created, String total_grade,
			String data) throws Exception {
		JSONObject answer = new JSONObject();
		answer.put("lesson_id", lesson_id);
		answer.put("grade", grade);
		answer.put("passed", passed);
		answer.put("created", created);
		answer.put("total_grade", total_grade);
		answer.put("data", data);
		return answer;
	}

	public JSONObject getListLessons(int id, String lesson_name, String group_name) throws Exception {
		JSONObject lessons = new JSONObject();
		lessons.put("id", id);
		lessons.put("lesson_name", lesson_name);
		lessons.put("group_name", group_name);
		return lessons;
	}

}