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
           String new_product=request.getParameter("search");
           
           sql="SELECT * FROM `product` WHERE `Product_name`='"+new_product+"'"; 
	       PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
	       ResultSet rs=pstmt.executeQuery();

           rs.next();
           String search_product=rs.getString(8);
           con.createStatement().execute(sql);
           response.sendRedirect(""+search_product+"");
//Step 6: 關閉連線
        
//Step 5: 顯示結果 
%>        
 
</body>
</html>
