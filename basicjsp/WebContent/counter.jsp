<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
int cnt;
int maxLength;
public void init() {
	cnt = 0;
	maxLength = 8;
}
%> 
<%
cnt++;
String cntStr = cnt + "";
int cntLength = cntStr.length();
int zeroLength = maxLength - cntLength;
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<%
for(int i=0;i<zeroLength;i++) {
%>
<img src="/basicjsp/img/0.png" width="50">
<%
}
for(int i=0;i<cntLength;i++) {
%>
<img src="/basicjsp/img/<%= cntStr.charAt(i) %>.png" width="50">
<%	
}
%>
</center>
</body>
</html>



