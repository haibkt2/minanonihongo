package minanonihongo.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.CourseIlm;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseIlmRepository;
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
	CommonService commonService;

	public boolean setVocaCourseIlm(String listCurrent, String deleOld, CourseIlm courseIlm) throws Exception {
		List<VocaCourseIlm> vocaCourseIlms = new ArrayList<VocaCourseIlm>();
		courseIlm.setVocaCourseIlms(vocaCourseIlms);
        courseIlm.setCourse(courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getCourse());
        courseIlm.setCourseGlobal(
				courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getCourseGlobal());
		courseIlm.setCourseIlmType(courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getCourseIlmType());
		courseIlm.setExams(courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getExams());
		courseIlm.setExamResult(courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getExamResult());
		courseIlm.setCreateDate(courseIlmRepository.findByCourseIlmId(courseIlm.getCourseIlmId()).getCreateDate());
		courseIlm.setCourseIlmFlg("1");
		courseIlm.setUpdateDate(commonService.currentDate());
		courseIlm.setLocaFileCourse("demo");
		courseIlm.setLocaFileImg("demo");
		try {
            JSONArray nameArray = (JSONArray) JSONSerializer.toJSON(listCurrent);
            System.out.println(nameArray.size());
            for(Object js : nameArray){
                JSONObject json = (JSONObject) js;
                VocaCourseIlm vocaCourseIlm = new VocaCourseIlm();
                vocaCourseIlm.setHirakana(json.getString("hirakana"));
                vocaCourseIlm.setTranslate(json.getString("translate"));
                vocaCourseIlm.setKanji(json.getString("kanji"));
                vocaCourseIlm.setCourseIlms(courseIlm);
                vocaCourseIlm.setVocaCourseIlmId(setVocaId());
                vocaCourseIlmRepository.save(vocaCourseIlm);
                vocaCourseIlms.add(vocaCourseIlm);
            }
    		courseIlmRepository.save(courseIlm);
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