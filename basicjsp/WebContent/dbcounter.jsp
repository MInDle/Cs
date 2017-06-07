<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%!
int count;
int maxLength;

public void init() {
	count = 0;
	maxLength = 8;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}
%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try {
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.28:1521:orcl", "kitri", "kitri");
	String sql = "select cnt from counter";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	rs.next();
	count = rs.getInt(1);
	sql = "update counter set cnt = cnt + 1";
	stmt.executeUpdate(sql);
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	try {
		if(rs != null)
			rs.close();
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

String countStr = count + "";//"168"
int countLength = countStr.length();//3
int zeroLength = maxLength - countLength;//5		

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
for(int i=0;i<countLength;i++) {
%>
<img src="/basicjsp/img/<%= countStr.charAt(i) %>.png" width="50">
<%	
}
%>
</center>
</body>
</html>













