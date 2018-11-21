package minanonihongo.service;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import minanonihongo.model.User;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

@Service
public class GoogleUtils {
	@Autowired
	private Environment env;

	public String getToken(final String code) throws ClientProtocolException, IOException {
		String link = env.getProperty("google.link.get.token");
		String response = Request.Post(link)
				.bodyForm(Form.form().add("client_id", env.getProperty("google.app.id"))
						.add("client_secret", env.getProperty("google.app.secret"))
						.add("redirect_uri", env.getProperty("google.redirect.uri")).add("code", code)
						.add("grant_type", "authorization_code").build())
				.execute().returnContent().asString();
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(response).get("access_token");
		return node.textValue();
	}

	public User getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		String link = env.getProperty("google.link.get.user_info") + accessToken;
		String response = Request.Get(link).execute().returnContent().asString();
		JSONObject json = (JSONObject) JSONSerializer.toJSON(response);
		User user = new User();
		user.setUserId(json.getString("id").substring(0, 15));
		user.setUserName(json.getString("id"));
		user.setEmail(json.getString("email"));
		try {
			user.setName(json.getString("name"));
		} catch (Exception e) {
			user.setName(json.getString("email").split("@")[0]);
		}
		user.setAvatar(json.getString("picture"));
		return user;
	}
}
