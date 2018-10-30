
package minanonihongo.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.Post;
import minanonihongo.repository.PostRepository;

@Service
public class PostServiceImpl {

	@Autowired
	private PostRepository postRepository;
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
}