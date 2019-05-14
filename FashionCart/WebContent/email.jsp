<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.io.*,com.dto.Customer,java.util.*,javax.mail.*,javax.mail.internet.*,javax.activation.*,javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String result;
    Customer customer = (Customer)session.getAttribute("customer");
	//Recipient's email ID needs to be mentioned.
	String to = customer.getEmail();
	// Sender's email ID needs to be mentioned
	String from = "vishnupriya.anathapalli@gmail.com";
	final String username = "VishnupriyaAnanthapalli";
	final String password = "9182860366";

	// Assuming you are sending email through relay.jangosmtp.net
	String host = "smtp.gmail.com";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.port", "25");

	//Get the Session object.
	Session mailSession = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,
							password);
				}
			});

	try {
		// Create a default MimeMessage object.
		Message message = new MimeMessage(mailSession);

		// Set From: header field of the header.
		message.setFrom(new InternetAddress(from));

		// Set To: header field of the header.
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));

		// Set Subject: header field
		message.setSubject("Congratulations");

		// Now set the actual message
		message.setText("Congratulations!!!!!You have won the bidding and for further" +
		"information please login to your Fashioncart account and check it out!");

		// Send message
		Transport.send(message);

		System.out.println("Sent message successfully....");
		result = "Sent message successfully....";

	} catch (MessagingException e) {
		e.printStackTrace();
		result = "Error: unable to send message....";
	}
	RequestDispatcher rd = request.getRequestDispatcher(
			"AfterLoginHomePage.jsp");
	rd.include(request, response);
	
%>
