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
    <form method="get" action="update_product.jsp" >
    <table border="1">
        <tr>
          <th>id</th>
          <th>名稱</th>
          <th>價錢</th>
          <th>照片</th>
        </tr>
        <tr>
            <th><input type="text" name="id"></th>
            <th><input type="text" name="product"></th>
            <th><input type="text" name="price"></th>
            <th><input type="text" name="photo"></th>
        </tr>
        <tr>
            <th colspan="4"><input type="submit" value="submit"></th>  
        </tr>
    </form>
</body>
</html>