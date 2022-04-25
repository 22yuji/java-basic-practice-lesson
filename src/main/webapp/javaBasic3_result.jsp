<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
// 入力値取得
	String nameRes = request.getParameter("name");
	String ageRes = request.getParameter("age");
	String bloodRes = request.getParameter("bloodType");
	
	int age;
	String recordAge = "null";
	String recordBlood = "null";
	
	if(ageRes.isEmpty()){
		age = 0;
	}else{
		age = Integer.parseInt(ageRes);
	}
	
// ロボットからの返信用メッセージ作成
	if(nameRes.isEmpty()){
		nameRes = "名無し";
	}

	if(age > 20){
		age = age - 20;
		recordAge = "私よりも" + age + "歳年上ですね！";
	}else if(age < 20){
		age = 20 - age;
		recordAge = "私よりも" + age + "歳年下ですね！";
	}else{
		recordAge = "私と同い年なんですね！";
	}

	switch(bloodRes){
		case"typeA":
			recordBlood = "私もA型です！";
			break;
		case"typeB":
			recordBlood = "B型の人と話すのは初めてです。";
			break;
		case"typeAB":
			recordBlood = "私の母がAB型です。";
			break;
		case"typeO":
			recordBlood = "私の父がO型です";
			break;
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Java基礎_演習問題3</title>
	</head>
	
	<body>
		<h1>Java基礎 - 演習問題3</h1>
		
		<h2>ロボットからの返信</h2>
		<div>
		    <!-- 必要に応じて処理を変更してください  -->
		
			<p>こんにちは、<% out.println(nameRes); %>さん！<% if(nameRes.equals("ロボット"))out.println("私と同じ名前ですね！"); %></p>
			<p><% out.println(recordAge); %></p>
			<p><% out.println(recordBlood); %></p>
		</div>
		<a href="javaBasic3_input.jsp">戻る</a>
	</body>
</html>