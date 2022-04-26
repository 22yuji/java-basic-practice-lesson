<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください
request.setCharacterEncoding("UTF-8");
    
    // 入力値取得
	String inputStr = "数値を入力してください。";
	String numX = request.getParameter("num1");
	String numY = request.getParameter("num2");
	String formula = request.getParameter("operator");
    if( numX != null || numY != null){
	int x;
	int y;
	
    // 表示するメッセージ用の変数
    
    if( numX.isEmpty() && numY.isEmpty()){
    	inputStr = "数値が両方とも未入力です";
    }else if(numX.isEmpty() || numY.isEmpty()){
    	inputStr = "数値を入力してください";
    }else{
    	x = Integer.parseInt(numX);
    	y = Integer.parseInt(numY);
    	switch(formula){
    		case "add":
    			inputStr = x + "+" + y + "=" + (x + y);
    			break;
    		case "sub":
    			inputStr = x + "-" + y + "=" + (x - y);
    			break;
    		case "mul":
    			inputStr = x + "×" + y + "=" + (x * y);
    			break;
    		case "div":
    			inputStr = x + "÷" + y + "=" + (x / y);
    			break;
    	}
    	
    }
    // メッセージ作成
    

    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
	<% out.println(inputStr); %>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>