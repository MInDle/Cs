<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" info="�� ������ ���� ó������ jsp ������ �������̴�. info"%>
<%! 
//�� ������ ���� ó������ jsp ������ �������̴�. java
String name;

public void init() {
	name = "��ȿ��";
}
%>
<%--  
<%= name2 %>
�� ������ ���� ó������ jsp ������ �������̴�. jsp
--%>
<!-- �� ������ ���� ó������ jsp ������ �������̴�. html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
Hello JSP!!!<br>
�ȳ� ���̿�����!!!!<br>
<% out.print(name); %>�� �ȳ��ϼ���.<br>
<%= name %>�� �ȳ��ϼ���.<br>
</center>
</body>
</html>