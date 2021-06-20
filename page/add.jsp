<!DOCTYPE html><!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");  
           String new_name=request.getParameter("name");
           String new_product=request.getParameter("product");
           String new_rating=request.getParameter("rating");
		   String new_word=request.getParameter("word");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="INSERT guestbook (`GBName`,`Product`, `Rating`, `Word`, `Putdate`) ";
           sql+="VALUES ('" + new_name + "', ";
           sql+="'"+new_product+"\', ";
           sql+="'"+new_rating+"', ";
           sql+="'"+new_word+"', "; 
           sql+="'"+new_date+"')";      

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
%>        
  <%  

           response.sendRedirect("product.jsp");

%>
</body>
</html>
