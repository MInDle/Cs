<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>** 구구단(out.print) **</h3>
<table width="800" height="800" border="1">
<%
for(int i=1;i<10;i++) {
	out.println("	<tr align=\"center\">");
	for(int dan=2;dan<10;dan++) {
		String color = "pink";
		if(dan % 2 != 0)
			color = "cyan";
		out.print("<td bgcolor=\"" + color + "\"><font size=\"10\">" + dan + " * " + i + " = " + dan*i + "</font></td>");
	}
	out.println("	</tr>");
}
%>
</table>
<br><br>
<h3>** 구구단(out.print) **</h3>
<table width="800" height="800" border="1">
<%
for(int i=1;i<10;i++) {
%>
<tr align="center">
<%
	for(int dan=2;dan<10;dan++) {
		String color = "pink";
		if(dan % 2 != 0)
			color = "cyan";
%>
<td bgcolor="<% out.print(color); %>">
<font size="10"><% out.print(dan);%> * <% out.print(i); %> = <% out.print(dan*i);%></font>
</td>
<%
	}
%>
</tr>
<%
}
%>
</table>
<br><br>
<h3>** 구구단(출력부) **</h3>
<table width="800" height="800" border="1">
<%
for(int i=1;i<10;i++) {
%>
<tr align="center">
<%
	for(int dan=2;dan<10;dan++) {
		String color = "pink";
		if(dan % 2 != 0)
			color = "cyan";
%>
<td bgcolor="<%= color %>">
<font size="10"><%=dan%> * <%=i%> = <%=dan*i%></font>
</td>
<%
	}
%>
</tr>
<%
}
%>
</table>
<br><br>
</center>
</body>
</html>