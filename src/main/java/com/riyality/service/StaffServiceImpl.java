package com.riyality.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class StaffServiceImpl implements StaffService {

	@Override
	public long getStaffCount() {
		RestTemplate template = new RestTemplate();
		String url = "http://localhost:9696/staffs/staffcount";
		HttpHeaders headers = new HttpHeaders();
		HttpEntity<String> entity = new HttpEntity<>("body", headers);
		try {
			ResponseEntity<Long> res = template.exchange(url, HttpMethod.GET, entity, Long.class);
			System.out.println(res+"count");
			return res.getBody();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
