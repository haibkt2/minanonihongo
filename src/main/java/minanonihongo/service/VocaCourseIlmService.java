package minanonihongo.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

@Service
public class VocaCourseIlmService {

	@Autowired
	VocaCourseIlmRepository vocaCourseIlmRepository;

	@Autowired
	CourseIlmRepository courseIlmRepository;

	@Autowired
	CourseRepository courseRepository;
	@Autowired
	CommonService commonService;
	@Value("${string.reponsitory.local}")
	private String localFile;

	public boolean setVocaCourseIlm(String listCurrent, String deleOld, CourseIlm courseIlm) throws Exception {
		try {
			JSONArray ld = (JSONArray) JSONSerializer.toJSON(deleOld);
			for (Object jd : ld) {
				JSONObject json = (JSONObject) jd;
				VocaCourseIlm vocaCourseIlm = vocaCourseIlmRepository.findByVocaCourseIlmId(json.getString("id"));
				vocaCourseIlmRepository.delete(vocaCourseIlm);
			}
			JSONArray lc = (JSONArray) JSONSerializer.toJSON(listCurrent);
			for (Object js : lc) {
				JSONObject json = (JSONObject) js;
				String change = json.getString("change");
				if ("1".equals(change)) {
					if (!commonService.copyAudio(courseIlm.getCourse().getCourseName(), courseIlm.getCourseIlmId(),
							json.getString("audio")))
						return false;
					VocaCourseIlm vocaCourseIlm = new VocaCourseIlm();
					vocaCourseIlm.setHirakana(json.getString("hirakana"));
					vocaCourseIlm.setExample(json.getString("example"));
					vocaCourseIlm.setAudio(json.getString("audio"));
					vocaCourseIlm.setTranslate(json.getString("translate"));
					vocaCourseIlm.setKanji(json.getString("kanji"));
					vocaCourseIlm.setCourseIlms(courseIlm);
					if (vocaCourseIlmRepository.findByVocaCourseIlmId(json.getString("id")) == null) {
						vocaCourseIlm.setVocaCourseIlmId(setVocaId());
					} else {
						vocaCourseIlm.setVocaCourseIlmId(json.getString("id"));
					}
					vocaCourseIlmRepository.save(vocaCourseIlm);
				}

			}
			
			String prb = localFile + courseIlm.getCourse().getCourseName() + "/rb";
			FileUtils.deleteDirectory(new File(prb));
			return true;
		} catch (JSONException e) {
			return false;
		}

	}

	public String setVocaId() {
		List<VocaCourseIlm> vocas = (List<VocaCourseIlm>) vocaCourseIlmRepository.findAll();
		String vocaId = "VOCA00000000001";
		if (vocas.size() > 0) {
			int id = Integer.parseInt(vocas.get(vocas.size() - 1).getVocaCourseIlmId().substring(4, 15)) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 11) {
				int count = 11 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			vocaId = "VOCA".concat("" + countUsId);
		}
		return vocaId;
	}
}