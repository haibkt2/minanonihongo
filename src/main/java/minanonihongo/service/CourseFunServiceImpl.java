
package minanonihongo.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import minanonihongo.model.CourseFun;
import minanonihongo.model.CourseFunType;
import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.repository.CourseFunRepository;
import minanonihongo.repository.CourseFunTypeRepository;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;

@Service
public class CourseFunServiceImpl {

	@Autowired
	private CourseFunRepository courseFunRepository;
	
	@Autowired
	private CourseFunTypeRepository courseFunTypeRepository;

	public String setPostId() {
		List<CourseFun> fun = (List<CourseFun>) courseFunRepository.findAll();
		String vocaId = "CFUN000001";
		if (fun.size() > 0) {
			int id = Integer.parseInt(fun.get(fun.size() - 1).getCourseBgId().substring(4, 10)) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 6) {
				int count = 6 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			vocaId = "CFUN".concat("" + countUsId);
		}
		return vocaId;
	}
	
	public void getMenu(Model model) {
		List<CourseFunType> funTypes = (List<CourseFunType>) courseFunTypeRepository.findAll();
		model.addAttribute("funt", funTypes);
		List<CourseFun> funmn = courseFunRepository.findCourseFunMn();
		model.addAttribute("funmn", funmn);
	}
	
	
}