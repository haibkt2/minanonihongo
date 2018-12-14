
package minanonihongo.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;

@Service
public class PostServiceImpl {

	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private PostTypeRepository postTypeRepository;

	public String setPostId() {
		List<Post> post = (List<Post>) postRepository.findAll();
		String vocaId = "POST000001";
		if (post.size() > 0) {
			int id = Integer.parseInt(post.get(post.size() - 1).getPostId().substring(4, 10)) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 6) {
				int count = 6 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			vocaId = "POST".concat("" + countUsId);
		}
		return vocaId;
	}
	
	public void getMenu(Model model) {
		List<PostType> postTypes = (List<PostType>) postTypeRepository.findAll();
		model.addAttribute("postt", postTypes);
		List<Post> postmn = postRepository.findPostMn();
		model.addAttribute("postmn", postmn);
	}
	
	
}