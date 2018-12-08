package minanonihongo.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommonService {
	@Value("${string.reponsitory.local}")
	private String localFile;
	@Autowired
	Common common;

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

	public boolean saveFile(MultipartFile file, String local) {
		String path = localFile + local;
		File uploadDir = new File(path);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String fileName = null;
		if (!file.isEmpty()) {
			fileName = common.toUrlFriendly(file.getOriginalFilename());
			try {
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffStream;
				buffStream = new BufferedOutputStream(new FileOutputStream(new File(path + fileName)));
				buffStream.write(bytes);
				buffStream.close();
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}

		}
		return true;
	}

	public boolean delFile(String local) {
		String path = localFile + local;
		File file = new File(path);
		file.delete();
		return true;
	}

	public boolean copyAudio(String course, String cid, String audio) {
		String from = localFile + course + "/rb/" + audio;
		String to = localFile + course + "/voca/" + "/" + cid + "/" + audio;
		if (!audio.isEmpty()) {
			File source = new File(from);
			File dest = new File(to);
			try {
				if (source.exists()) {
					FileUtils.copyFile(source, dest);
					return true;
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		} 
			return true;
	}

	public boolean checkTypeImg(MultipartFile file) {
		String orgName = file.getOriginalFilename();
		String type = orgName.split("\\.")[1].toLowerCase();
		switch (type) {
		case "jpg":
			return true;
		case "png":
			return true;
		case "gif":
			return true;
		case "tiff":
			return true;
		case "bmp":
			return true;
		default:
			return false;
		}
	}
}