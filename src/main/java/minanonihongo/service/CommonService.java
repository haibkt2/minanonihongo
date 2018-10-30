package minanonihongo.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import minanonihongo.model.Post;
import minanonihongo.repository.PostRepository;
@Service
public class CommonService {
	
	@Autowired
    private PostRepository postRepository;
	
	public Date currentDate() throws Exception {
		Date date = new Date();
		return date;
	}

	public String setPassword(int length) {
		String alphanum = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		int randomInt = 0;
		Random randomGenerator = new Random();
		StringBuffer password = new StringBuffer();
		for (int i = 0; i < length; i++) {
			randomInt = randomGenerator.nextInt(alphanum.length() - 1);
			char ch = alphanum.charAt(randomInt);
			password.append(ch);
		}
		return password.toString();
	}

	public String getDayOfWeekName(String year, String month, String date, Locale locale) {
		Calendar cal = initDate(year, month, date);
		return cal.getDisplayName(Calendar.DAY_OF_WEEK, Calendar.SHORT, locale);
	}

	public Calendar initDate(String year, String month, String date) {
		int _year = Integer.parseInt(year);
		int _month = Integer.parseInt(month);
		int _date = Integer.parseInt(date);
		Calendar cal = Calendar.getInstance();
		cal.setFirstDayOfWeek(Calendar.MONDAY);
		cal.set(_year, _month - 1, _date);
		return cal;
	}

	public List<String> setDay() {
		List<String> setDay = new ArrayList<>();
		CommonService cmsv = new CommonService();
		Date crdate = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		for (int i = 0; i < 7; i++) {
			Date d_set = new Date(crdate.getTime() + (1000 * 60 * 60 * 24 * i));
			String crday[] = simpleDateFormat.format(d_set).split("/");
			String Yeart = crday[0];
			String Month = crday[1];
			String Day = crday[2];
			String dayOfW = cmsv.getDayOfWeekName(Yeart, Month, Day, new Locale("en"));
			setDay.add(dayOfW + " " + Day + "-" + Month);
		}
		return setDay;
	}

	public String autoOrderId(String orderId) {
		if(orderId.isEmpty() || orderId == null) orderId = "ORDER0000";
		String strorderid = orderId.substring(5, 9);
		int odId = Integer.parseInt(strorderid);
		++odId;
		String countUserId = "" + odId;
		if (countUserId.trim().length() != 4) {
			int count = 4 - countUserId.trim().length();
			for (int i = 0; i < count; i++) {
				countUserId = "0" + countUserId;
			}
		}
		return "ORDER".concat("" + countUserId);
	}

	public String autoRqId(String rId) {
		if(rId.isEmpty() || rId == null) rId = "REQUE0000";
		String strorderid = rId.substring(5, 9);
		int odId = Integer.parseInt(strorderid);
		++odId;
		String countUserId = "" + odId;
		if (countUserId.trim().length() != 4) {
			int count = 4 - countUserId.trim().length();
			for (int i = 0; i < count; i++) {
				countUserId = "0" + countUserId;
			}
		}
		return "REQUE".concat("" + countUserId);
	}
	public String autoPostid() {
		List<Post> posts = (List<Post>) postRepository.findAll();
		if(posts == null) return "POST000000";
		String postId = posts.get(posts.size() - 1).getPostId();
        int id = Integer.parseInt(postId.substring(4, 9)) + 1;;
        String countPostId =""+id;
            if(countPostId.trim().length()!=6) {
                int count = 6-countPostId.trim().length();
                for (int i = 0; i < count; i++) {
                	countPostId = "0"+countPostId;
                }
            }
            return "POST".concat(""+countPostId);
        }
}