
package minanonihongo.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import minanonihongo.model.Post;
import minanonihongo.model.PostType;
import minanonihongo.repository.PostRepository;
import minanonihongo.repository.PostTypeRepository;

@Service
public class PostServiceImpl {

	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private PostTypeRepository postTypeRepository;
	@Autowired
	private CommonService commonService;

	public String doSave(Post post) throws Exception {
		Post p = postRepository.findByPostId(post.getPostId());
		if(p == null) {
			post.setCreateDate(commonService.currentDate());
			post.setUpdateDate(commonService.currentDate());
//			post.setPostFlg("1");
//			post.setViewPost(0);
		}
			return "";
	}
	
	public void getMenu(Model model) {
		List<PostType> postTypes = (List<PostType>) postTypeRepository.findAll();
		model.addAttribute("postt", postTypes);
		List<Post> postmn = postRepository.findPostMn();
		model.addAttribute("postmn", postmn);
	}
	
	
}