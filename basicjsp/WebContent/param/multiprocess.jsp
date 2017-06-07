<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public String isoToEuc(String tmp) {
	String euc = "";
	try {
		if(tmp != null)
			euc = new String(tmp.getBytes("ISO-8859-1"), "EUC-KR");
	} catch(Exception e){
		e.printStackTrace();
	}
	return euc;
}
%>

<%
String name = isoToEuc(request.getParameter("name"));
String id = request.getParameter("id");
String fruit[] = request.getParameterValues("fruit");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<%=name%>(<%=id %>)님이 좋아하는 과일은
<%
if(fruit != null) {
	int len = fruit.length;
	for(int i=0;i<len;i++) {
%>
<%=isoToEuc(fruit[i]) %><%
		if(i != len-1){
%>
,
<%
		}
	}
%>입니다.
<%
} else {
%>
없습니다.	
<%
}
%>
</center>
</body>
</html>