<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border="1">
        <tr>
          <th><a href='newproduct.jsp'>新增</a></th>
          <th><a href='delet_old_product.jsp'>刪除</a></th>
          <th colspan='3'><a href='update_old_product.jsp'>修改</a></th>
        </tr>
        <tr>
          <th >商品</th>
          <th colspan="2">價錢</th>
        </tr>
        <% 
        sql="select * from product";
        PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
        ResultSet rs=pstmt.executeQuery();
      
        rs.last();
          int totalNo=rs.getRow();
                  
        sql="select * from product";
        rs=con.createStatement().executeQuery(sql);
        for (int i=0; i<totalNo; i++)
          {
          rs.next();
          out.print("<tr>\n");
          out.print("<th>"+rs.getString(12)+"</th>\n");
          out.print("<th colspan='2'>"+rs.getString(11)+"</th>\n");
          out.print("\n");
          }		

      %>
      <form method="POST" action="index.jsp">
          <input type="submit" value="回首頁">
        </form>
</body>
</html>