
package minanonihongo.service;

import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.http.Header;
import minanonihongo.repository.UserRepository;

@Service
public class UserServiceImpl {

	@Autowired
	private UserRepository userRepository;

	@SuppressWarnings("null")
	public minanonihongo.model.User setUserFb(String userId) throws Exception {
		// String userId = user.getAvatar();
		minanonihongo.model.User findUser = userRepository.findByUserId("4444444");
		if (findUser == null) {
			findUser.setUserId(userId);
			// findUser.setUserName(user.getId());
			// findUser.setName(user.getName());
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

	public String createAuthToken(String baseRestURL, HttpClient httpClient, String username, String password) {
		String APIPath = "/login";
		String completeRestURL = baseRestURL + APIPath;
		System.out.println("REST API URL: " + completeRestURL);

		// Define the server endpoint to send the HTTP request to
		URL serverUrl;
		try {
			serverUrl = new URL(completeRestURL);

			HttpPost httpRequest = new HttpPost(completeRestURL);
			httpRequest.setHeader("Content-Type", "application/json");
			httpRequest.setHeader("Accept", "application/json");
			StringEntity body = new StringEntity("{\"username\": \"" + username + "\",\"password\": \"" + password
					+ "\",\"loginMode\": 1,\"applicationType\": 35}");
			httpRequest.setEntity(body);

			HttpResponse response = httpClient.execute(httpRequest);

			Header[] headers = (Header[]) response.getAllHeaders();
			for (int i = 0; i < headers.length; i++) {
				Header header = headers[i];
				// System.out.println(header.getName() + " : " + header.getValue());
				if (header.getName().equalsIgnoreCase("X-MSTR-AuthToken")) {
					return header.getValue();
				}
			}

			return null;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
}