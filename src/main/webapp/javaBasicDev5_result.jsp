<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
	String goods_1 = request.getParameter("product1");
	String goods_2 = request.getParameter("product2");
	
	String amount_1 = request.getParameter("amount1");
	String amount_2 = request.getParameter("amount2");

	String rank = request.getParameter("rank");
	
    // 数値に変換
    int amoNum1;
    int amoNum2;
    
    int pt1 = 0;
    int pt2 = 0;
    
    if(ParamUtil.isNullOrEmpty(amount_1)){
    	amoNum1 = 0;
    	pt1 = 0;
    }else{
    	amoNum1 = Integer.parseInt(amount_1);
    	if(rank.isEmpty()){
    		pt1 = ParamUtil.getPoint(amoNum1);
    	}else{
    		int rankNo = Integer.parseInt(rank);
    		pt1 = ParamUtil.getPoint(amoNum1, rankNo);
    	}
    }
    
	if(ParamUtil.isNullOrEmpty(amount_2)){
    	amoNum2 = 0;
    	pt2 = 0;
    }else{
    	amoNum2 = Integer.parseInt(amount_2);
    	if(rank.isEmpty()){
    		pt2 = ParamUtil.getPoint(amoNum2);
    	}else{
    		int rankNo = Integer.parseInt(rank);
    		pt2 = ParamUtil.getPoint(amoNum2, rankNo);
    	}
    }

    // メソッドを呼んでポイントを取得
    

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%=goods_1%></td>
      <td class="right"><%=amoNum1%></td>
      <td class="right"><%=pt1%></td>
    </tr>
    <tr>
      <td><%=goods_2%></td>
      <td class="right"><%=amoNum2%></td>
      <td class="right"><%=pt2%></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>