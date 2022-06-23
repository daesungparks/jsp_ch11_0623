<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연결 테스트</title>
</head>
<body>
	<%
		//data source 설정
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/odbo";
		String username = "root";
		String password = "042200";
		
		Connection conn = null;
		
		try{
			Class.forName(driverName);//드라이버 로딩
			conn = DriverManager.getConnection(url,username,password);
			//데이터 베이스 연동
			out.println(conn);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(conn !=null){
				conn.close();
			}
		}
		
		
		
	%>
</body>
</html>