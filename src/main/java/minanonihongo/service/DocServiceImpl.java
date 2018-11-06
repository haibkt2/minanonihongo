
package minanonihongo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.Course;
import minanonihongo.model.Document;
import minanonihongo.model.User;
import minanonihongo.repository.DocRepository;

@Service
public class DocServiceImpl {

	@Autowired
	private DocRepository docRepository;
	@Autowired
	private CommonService commonService;

	public boolean doSaveDoc(String fileName, Course course, String descrip, HttpSession s) {

		try {
			List<Document> documents = (List<Document>) docRepository.findAll();
			String docId = "DOC0000";
			if (documents.size() > 0) {
				int id = Integer.parseInt(documents.get(documents.size() - 1).getDocId().substring(3, 7)) + 1;
				String countDocId = "" + id;
				if (countDocId.trim().length() != 4) {
					int count = 4 - countDocId.trim().length();
					for (int i = 0; i < count; i++) {
						countDocId = "0" + countDocId;
					}
				}
				docId = "DOC".concat("" + countDocId);
			}
			Document document = new Document();
			document.setCourse(course);
			document.setCreateDate(commonService.currentDate());
			document.setDocId(docId);
			document.setLocaFileDoc(fileName);
			document.setUpdateDate(commonService.currentDate());
			document.setDescrip(descrip);
			document.setUser((User) s.getAttribute("user"));
			docRepository.save(document);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}