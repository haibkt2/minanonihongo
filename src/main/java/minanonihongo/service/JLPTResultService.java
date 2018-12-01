
package minanonihongo.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTResult;
import minanonihongo.model.JLPTResultJson;
import minanonihongo.model.User;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.JLPTRsRepository;

@Service
public class JLPTResultService {

	@Autowired
	private CommonService commonService;

	@Autowired
	JLPTRsRepository jlptRsRepository;
	
	@Autowired
	JLPTRepository jlptRepository;

	public boolean doSaveJlptRs(HttpSession ss, JLPTResultJson dt) throws Exception {
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
}