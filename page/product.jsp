<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>product</title>
  <link rel="stylesheet" href="product.css">
  <!--hot--><!--
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css'><link rel="stylesheet" href="hot.css">
  -->
  <!--自動播放動態廣告-->
  <link rel="stylesheet" type="text/css" href="coverflow.css">  

  <style>
      @import"../assets/css/product.css";
      @import"../assets/css/coverflow.css";
  </style>
</head>

<body>
  <!---------------網頁計數器-->
  <% 
  if(application.getAttribute("count")==null){
  application.setAttribute("count", "1");
  }else{
  String strCount = application.getAttribute("count").toString();
  int intCount = Integer.parseInt(strCount);
  intCount++;
  application.setAttribute("count", Integer.toString(intCount));
  }
  %>
    
   
<!-- partial:index.partial.html -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>


    <div id="main">
        <section>
            <div class="title">
                <div class="cat">
                    <img src="../assets/photo/20.gif" alt="">
                </div>
                <h1>小日子</h1>
                <h3>Be true. Be you.</h3>


                <!-- 按鈕 -->

                <ul>
                    <section class="buttons">
                        <a href="index.jsp" class="btna"><button class="draw">Home</button></a>
                        <a href="product.jsp" class="btna"><button class="draw2">Product</button></a>
                        <a href="aboutas.jsp" class="btna"><button class="draw3">About us</button></a>
                        <a href="login.jsp" class="btna"><button class="draw4">Log in</button></a>
                    </section>
                </ul>

            </div>


            <!--自動輪播動態廣告-->
            <div id="cover" class="mySlides" style="margin-top: 0px;">
                <a href='#'><img src="../assets/photo/postcard/p2.jpg" alt="照片"></a>
                <a href='#'><img src="../assets/photo/tape/tape4.jpg" alt="照片"></a>
                <a href='#'><img src="../assets/photo/sticker/stic2.jpg" alt="照片"></a>
                <a href='#'><img src="../assets/photo/bag/b2.jpg" alt="照片"></a>
                <a href='#'><img src="../assets/photo/postcard/p3.jpg" alt="照片"></a>
                <a href='#'><img src="../assets/photo/penbag/penbag1.jpg" alt="照片"></a>
            </div>
            <!------------------------hot word------------------------------>
            <div class="hotword">
                <h3 class="fixed">Click the letters!</h3>
                <div class="word">
                    <span>H</span>
                    <span>O</span>
                    <span>T</span>

                </div>
            </div>
            <!------------------------all word------------------------------>
            <div class="allword">
                <h3 class="fixed">all product here!!</h3>
                <div class="word2">
                    <span>A</span>
                    <span>L</span>
                    <span>L</span>
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <span>P</span>
                    <span>R</span>
                    <span>O</span>
                    <span>D</span>
                    <span>U</span>
                    <span>C</span>
                    <span>T</span>


                </div>
            </div>
            <!------------------------hot pic------------------------------>
            <div class="fire">
                <img src="../assets/photo/flame.png" alt="照片">
            </div>
            <div class="fire2">
                <img src="../assets/photo/flame.png" alt="照片">
            </div>

            <div class="no1">
                <img src="../assets/photo/no1.png" alt="照片">
            </div>

            <div class="no2">
                <img src="../assets/photo/no2.png" alt="照片">
            </div>

            <div class="no3">
                <img src="../assets/photo/no3.png" alt="照片">
            </div>
 <!---------------------------------------筆記本---------------------------------------------------->  
</div>
</section>
</div>
<div style="width:100%;height: 1000px;position: relative;">
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
		out.print("<div id='product"+rs.getString(2)+"'>\n");
        out.print("<div id='product-card"+rs.getString(3)+"'>\n");
		out.print("<div id='product-front"+rs.getString(4)+"'>\n");
        out.print("<div class='shadow"+rs.getString(5)+"'></div>\n");
        out.print("<div class='bopic'>\n");
        out.print("<img src='../"+rs.getString(6)+"' alt='' />\n");
        out.print("</div>\n");
		out.print("<div class='image_overlay"+rs.getString(7)+"'></div>\n");
		out.print("<a href='"+rs.getString(8)+"'' class='btna'><div id='view_details"+rs.getString(9)+"'>View details</div></a>\n");
		out.print("<div class='stats'>\n");
		out.print("<div class='stats-container"+rs.getString(10)+"'>\n");
		out.print("<span class='product_price'>"+rs.getString(11)+"</span>\n");
		out.print("<span class='product_name'>"+rs.getString(12)+"</span>\n");
		out.print("<p>小日子特有產品</p>\n");
		out.print("<div class='product-options'>\n");
		out.print("<strong>"+rs.getString(13)+"</strong>\n");
        out.print("<p>"+rs.getString(14)+"</p>\n");
		out.print("<div class='colors'>\n");
		out.print("<div class='"+rs.getString(15)+"'><span></span></div>\n");
		out.print("<div class='"+rs.getString(16)+"'><span></span></div>\n");
		out.print("<div class='"+rs.getString(17)+"'><span></span></div>\n");
		out.print("<div class='"+rs.getString(18)+"'><span></span></div>\n");
		out.print("<div class='"+rs.getString(19)+"'><span></span></div>\n");
		out.print("</div></div></div></div></div></div>");
    }
  %>
  
 
 







</div>
<!------------------------------------------------------------------------------------------------->
<div class="footer">
  <a href="https://www.instagram.com/cycuim/" target="_blank"><img src="../assets/photo/ig1.png" class="img1"></a>
  <span class="text1">IG : cycuim</span>
  <a href="https://www.facebook.com/groups/CYCUIM5400" target="_blank"><img src="../assets/photo/fb1.png"
          class="img2"></a>
  <span class="text2">FB : CYCU_IM</span>
  <a href="mailto:sappho5311@gmail.com?subject=我的意見" target="_blank"><img src="../assets/photo/email1.png"
          class="img3"></a>
  <span class="text3">聯繫我們</span><br>
  <div class="text4">Copyright@2021 By Lin Leah, Liu Sappho , Karen , Ho Wilson - An All Rights
      Reseved
  </div>

</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="../assets/js/product.js"></script>
<!--hot-->
<!--
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js'></script><script  src="hot.js"></script>
-->
<!------hotword------->

<script src="../assets/js/hotword.js"></script>
</body>

</html>