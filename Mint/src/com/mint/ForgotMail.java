package com.mint;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;


import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ForgotMail {

	public static void sendMail(String recepient, String token) throws Exception{
		System.out.println("Preparing to send mail");
		Properties properties=new Properties();
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		
		String myAccountEmail="mrohanth@gmail.com";
		String password="polarexpresss";
		
		Session session=Session.getInstance(properties,new Authenticator(){
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myAccountEmail,password);
			}
		});
		
		Message message=prepareMessage(session,myAccountEmail,recepient,token);
		
		Transport.send(message);
		System.out.println("Message sent Successfully");
	}
	
	private static Message prepareMessage(Session session,String myAccountEmail, String recepient,String token) {
		try {
			
		Message message=new MimeMessage(session);
		message.setFrom(new InternetAddress(myAccountEmail));
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
		message.setSubject("Mint Reset Password");
		String htmlcode="<p>Click on the link below to reset your password</p>"
				+ "<a href="+"http://localhost:3200/Mint/reset.jsp?token="+token+">Reset Password</a><br>"
				+"<p>The reset password page will expire after 1 hour the email was sent to you</p>";
		message.setContent(htmlcode,"text/html");
		return message;
		
		}
		catch(Exception ex) {
			Logger.getLogger(JavaMailUtil.class.getName()).log(Level.SEVERE,null,ex);
		}
		return null;
	}
	
	
	
	
	
	
	
	
}
