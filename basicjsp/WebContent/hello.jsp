<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" info="이 파일은 내가 처음으로 jsp 파일을 만들어본것이다. info"%>
<%! 
//이 파일은 내가 처음으로 jsp 파일을 만들어본것이다. java
String name;

public void init() {
	name = "안효인";
}
%>
<%--  
<%= name2 %>
이 파일은 내가 처음으로 jsp 파일을 만들어본것이다. jsp
--%>
<!-- 이 파일은 내가 처음으로 jsp 파일을 만들어본것이다. html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
Hello JSP!!!<br>
안녕 제이에스피!!!!<br>
<% out.print(name); %>님 안녕하세요.<br>
<%= name %>님 안녕하세요.<br>
</center>
</body>
</html>