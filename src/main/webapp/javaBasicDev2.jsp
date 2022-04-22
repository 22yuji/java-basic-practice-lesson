<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//定義インデックス
	String sumTitle = "合計";
	int[] sumProductAmount = {0,0};
	int[] sumMonthAmount = {0,0,0};
	int total = 0;
	
	String[] month = {
			"1月",
			"2月",
			"3月"
	};
	
	String[] productClass = {
			"食品",
			"飲料"
	};
	
	int[][] amount = {
			{352000, 442000, 520000},
			{278000, 342600, 380500}
	};
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Java基礎_演習問題2_発展</title>
	</head>
	
	<style>
	table {
	  border-collapse: collapse;
	}
	
	table th, table td {
	  border: solid 1px black;
	}
	</style>
	
	<body>
	  <h1>Java基礎 - 演習問題2 - 発展</h1>
	  <h2>売上一覧</h2>
	  
	  <table>
	    <tr>
	      <th></th>
	      <%
	        //テーブルのカラムを表示するループ
	      	for(int i = 0; i < 3; i++){
	      		out.println("<th>" + month[i] +"</th>");
	      	}
	      	out.println("<th>" + sumTitle + "</th>");
	      %>
	    </tr>
	    
	      <%
	      	//テーブル内のデータを表示するループ
	    	for(int i = 0; i < 2; i++){
	    		//行段落の開始
	    		out.println("<tr>");
	    		out.println("<td>" + productClass[i] + "</td>");
	    		
	    		//数字行を表示させるループ
	    		for(int j = 0; j < 3; j++){
	    			out.println("<td>" + amount[i][j] + "</td>");
	    			
	    			//合計の加算
	    			sumMonthAmount[j] = sumMonthAmount[j] + amount[i][j];
	    			sumProductAmount[i] = sumProductAmount[i] + amount[i][j];
	    		}
	    		
	    		//その項目の合計の表示
	    		out.println("<td>" + sumProductAmount[i] + "</td>");
	    		
	    		out.println("</tr>");
	    	}
	   	   	out.println("<td>" + sumTitle + "</td>");
	   	   	//月の合計のデータを表示させるループ
	   		for(int i = 0; i < 3; i++){
	   			out.println("<td>" + sumMonthAmount[i] + "</td>");
	   			//totalの加算
	   			total = total + sumMonthAmount[i];
	   		}
	   	   	
	   	   	//totalの表示
	   		out.println("<td>" + total + "</td>");
	      %>
	      
	  </table>
	</body>
</html>