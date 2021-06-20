<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<html>
<body>

<%
request.setCharacterEncoding("UTF-8");  
           String new_id=request.getParameter("id");
           String new_product=request.getParameter("product");
           String new_price=request.getParameter("price");
		   String new_photo=request.getParameter("photo");
//Step 4: 執行 SQL 指令	
           sql="INSERT product (`ID`,`Product`,`product_card`,`product_front`,`shadow`,`Photo`,`image_overday`,`product_html`,`view_detals`,`stats_container`,`Price`,`Product_name`,`remark_color`,`remark_detail`,`coler1`,`coler2`,`coler3`,`coler4`,`coler5`) ";
           sql+="VALUES ('" + new_id+ "', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', "; 
           sql+="'"+new_id+"', "; 
           sql+="'"+new_photo+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";     
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_price+"', ";
           sql+="'"+new_product+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_id+"') ";


           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
           response.sendRedirect("back.jsp");
%>
</body>

</html>