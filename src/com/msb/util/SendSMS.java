
package com.msb.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.net.ssl.HttpsURLConnection;

public class SendSMS {
	public int getRandomNumber(int min, int max) {
		return ((int) Math.floor(Math.random() * (max - min + 1)) + min);
	}

	public static void main(String[] args) throws ClassNotFoundException,
			SQLException {
		try {
		String message = "Your Otp is 12345 use this opt to verify your number...";
		String requestUrl = "https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?" +
		"APIKEY=" + "ekp4CG4fkeu" +
		"&MobileNo=" + "919032144941" +
		"&SenderID=" + "MSBRAN" +
		"&Message=" + URLEncoder.encode(message, "UTF-8") +
		"&ServiceName=" + "TEMPLATE_BASED";
		
		URL url = new URL(requestUrl);
		HttpsURLConnection httpsCon = (HttpsURLConnection) url.openConnection();
		httpsCon.setRequestMethod("GET");
		httpsCon.setConnectTimeout(10000);
		int intresult = httpsCon.getResponseCode();
		String strresult = httpsCon.getResponseMessage();
		BufferedReader in = new BufferedReader(new InputStreamReader(httpsCon.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		
		while ((inputLine = in.readLine()) != null)
		{
		response.append(inputLine);
		}
		in.close();
		httpsCon.disconnect();
		
		
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}