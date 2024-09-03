<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
System.out.println("process");
//String name=request.getParameter("name");
//System.out.println("name"+name);
//String email=request.getParameter("email");
String phone= request.getParameter("phone");
//request.getParameter("phone");
//session.setAttribute("name",name);
//session.setAttribute("email",email);
session.setAttribute("phone",phone);
System.out.println("phone"+phone);
String authkey = "ekp4CG4fkeu";
//Multiple mobiles numbers separated by comma
String mobiles = phone;
Random rand = new Random();
int otp = rand.nextInt(900000) + 100000;
session.setAttribute("otp",otp);
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "MSBRAN";
//Your message to send, Add URL encoding here.
String message = "Your OTP is "+otp;
//define route
//String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
//encoding message
String encoded_message=URLEncoder.encode(message);
//Send SMS API
String mainUrl="https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?";
//Prepare parameter string
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey);
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
//sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);
//final string
mainUrl = sbPostData.toString();
try
{
//prepare connection
myURL = new URL(mainUrl);
myURLConnection = myURL.openConnection();
myURLConnection.connect();
reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
String success="Your message sent sucessfully";
response.sendRedirect("otp.jsp");
//finally close connection
reader.close();
}
catch (IOException e)
{
e.printStackTrace();
}


/* try{
//String message = "Your Otp is 12345 use this opt to verify your number...";
String requestUrl = "http://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?" +
"APIKEY=" + "ekp4CG4fkeu" +
"&MobileNo=" + "919032144941" +
"&SenderID=" + "MSBRAN" +
"&Message=" + URLEncoder.encode(message, "UTF-8") +
"&ServiceName=" + "TEMPLATE_BASED";
URL url = new URL(requestUrl);
HttpURLConnection httpsCon = (HttpURLConnection) url.openConnection();
httpsCon.setRequestMethod("GET");
httpsCon.setConnectTimeout(10000);
int intresult = httpsCon.getResponseCode();
String strresult = httpsCon.getResponseMessage();
BufferedReader in = new BufferedReader(new InputStreamReader(httpsCon.getInputStream()));
String inputLine="inputLine";
StringBuffer responses = new StringBuffer();
System.out.println("respons :" +responses);
while ((inputLine = in.readLine()) != null)
{
responses.append(inputLine);
}
in.close();
httpsCon.disconnect();
} catch (IOException e){

System.out.println(e.getMessage());
} */
%>