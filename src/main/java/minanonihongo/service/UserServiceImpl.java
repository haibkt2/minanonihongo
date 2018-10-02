
package minanonihongo.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.repository.UserRepository;

@Service
public class UserServiceImpl {

	@Autowired
	private UserRepository userRepository;

	@SuppressWarnings("null")
	public minanonihongo.model.User setUserFb(String userId) throws Exception {
//		String userId = user.getAvatar();
		minanonihongo.model.User findUser = userRepository.findByUserId("4444444");
		if(findUser == null) {
			findUser.setUserId(userId);
//			findUser.setUserName(user.getId());
//			findUser.setName(user.getName());
		}
		return findUser;
	}

	public Date currentDate() throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		Date dateCurrent = dateFormat.parse(dateFormat.format(date));
		return dateCurrent;
	}

	public Date setDateOrder(String date) throws ParseException {
		String d = date.split("-")[0];
		String m = date.split("-")[1];
		Date day = null;
		Calendar myCal = Calendar.getInstance();
		int year = myCal.get(Calendar.YEAR);
		day = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-" + m + "-" + d);

		return day;
	}
}