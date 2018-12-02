
package minanonihongo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTAnswer;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTQuestion;
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
		jlptRsRepository.save(jlptResult);
		return true;
	}

	public String setJlptRsId() {
		List<JLPTResult> jlptrs = (List<JLPTResult>) jlptRsRepository.findAll();
		String jlptRsId = "RS_JLPT_0001";
		if (jlptrs.size() > 0) {
			int id = Integer.parseInt(jlptrs.get(jlptrs.size() - 1).getJlptRsId().substring(8, 12)) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 11) {
				int count = 4 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			jlptRsId = "RS_JLPT_".concat("" + countUsId);
		}
		return jlptRsId;
	}

	public List<Map<String, String>> mapJsonS() throws Exception {
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
		}
		//
		// int total_marks = 0;
		// for (JLPTQType jt : jlptQT) {
		// if (jt.getJlptQuestions() != null) {
		// total_marks += jt.getJlptQuestions().size();
		// int index = 0;
		// for (JLPTQuestion jlptQuestion : jt.getJlptQuestions()) {
		// index++;
		// list_lessons.add(getQuestion(index,
		// jt.getJlptQuestions().get(0).getJlpt().getJlptId().substring(
		// jt.getJlptQuestions().get(0).getJlpt().getJlptId().length() - 8,
		// jt.getJlptQuestions().get(0).getJlpt().getJlptId().length()),
		// jlptQuestion.getJlptQuestionId().substring(jlptQuestion.getJlptQuestionId().length()
		// - 2,
		// jlptQuestion.getJlptQuestionId().length()),
		// "3", jlptQuestion.getQuestion(), 1, jlptQuestion.getExplain()));
		// JSONArray ans = new JSONArray();
		// if (jlptQuestion.getJlptAnswer() != null) {
		// for (JLPTAnswer jlptAnswer : jlptQuestion.getJlptAnswer()) {
		// ans.add(getAnswer(
		// jlptAnswer.getJlptAnswerId().substring(jlptAnswer.getJlptAnswerId().length()
		// - 2,
		// jlptAnswer.getJlptAnswerId().length()),
		// jlptQuestion.getJlptQuestionId().substring(
		// jlptQuestion.getJlptQuestionId().length() - 2,
		// jlptQuestion.getJlptQuestionId().length()),
		// jlptAnswer.getAnswer(), jlptAnswer.getAnswerRghtWrng()));
		// }
		// }
		// list_results.put(
		// jlptQuestion.getJlptQuestionId().substring(jlptQuestion.getJlptQuestionId().length()
		// - 2,
		// jlptQuestion.getJlptQuestionId().length()),
		// ans);
		// }
		// }
		//
		// }
		Map<String, String> map = new HashMap<>();
		map.put("list_esults", list_results.toString());
		map.put("list_lessons", list_lessons.toString());
		jsons.add(map);
		return jsons;
	}

	public JSONObject getAnswer(String id, String task_id, String value, String grade) throws Exception {
		JSONObject answer = new JSONObject();
		answer.put("id", id);
		answer.put("task_id", task_id);
		answer.put("value", value);
		answer.put("grade", grade);
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