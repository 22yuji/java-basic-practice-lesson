<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table>
		<%
			for(int i = 1; i < 10; i++){
				out.print("<th>" + i + "</th>");
			}
		%>
			
		
		</table>
	</body>
</html>