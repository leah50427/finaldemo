<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en" >
  
<head>

  <meta charset="UTF-8">
  <title>小日子！！</title>
  <link rel="stylesheet" href="index.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <style>
      @import"../assets/css/index.css";
      #main .parallax-one {
      padding-top: 200px;
      padding-bottom: 200px;
      overflow: hidden;
      position: relative;
      width: 100%;
      background-image: url(../assets/photo/123.jpg);
      background-attachment: fixed;
      background-size: cover;
      -moz-background-size: cover;
      -webkit-background-size: cover;
      background-repeat: no-repeat;
      background-position: top center;
    }

    #main .parallax-two {
      padding-top: 200px;
      padding-bottom: 200px;
      overflow: hidden;
      position: relative;
      width: 100%;
      background-image: url(../assets/photo/3.jpg);
      background-attachment: fixed;
      background-size: cover;
      -moz-background-size: cover;
      -webkit-background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
    }

    #main .parallax-three {
      padding-top: 200px;
      padding-bottom: 200px;
      overflow: hidden;
      position: relative;
      width: 100%;
      background-image: url(../assets/photo/5.jpg);
      background-attachment: fixed;
      background-size: cover;
      -moz-background-size: cover;
      -webkit-background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
    }
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
  
  <header class="leah12345">
    <div class="container">
      <div class="logo"><a href="#">小日子</a></div>
      <nav>

        <div class="cat2">
          <img src="../assets/photo/20.gif" alt="">
        </div>
        <div class="membercard">
          <a href="member.jsp"><img src="../assets/photo/membercard.png" alt=""> </a>
        </div>
        <div class="logout">
          <a href="index.jsp"><img src="../assets/photo/logout.png" alt=""> </a>
        </div>
        <ul>
          <section class="buttons">
            <a href="index.jsp" class="btna"><button class="draw">Home</button></a>
            <a href="product.jsp" class="btna"><button class="draw2">Product</button></a>
            <a href="aboutas.jsp" class="btna"><button class="draw3">About us</button></a>
            <a href="login.jsp" class="btna"><button class="draw4">Log in</button></a>
          </section>
        </ul>
      </nav>
    </div>
  </header>




  <div id="main">

    <section>


      <div class="title">
        <div class="cat">
          <img src="../assets//photo/20.gif" alt="">
        </div>
        <h1>小日子</h1>
        <h3>Be true. Be you.</h3>

      </div>
    </section>

    <section>
      <div class="parallax-one">
        <h2></h2>
      </div>
    </section>

    <section>
      <div class="block" style="display: flex;">
        <div>
          <div class="gif1">
            <img src="../assets/photo/original.gif" alt="">
          </div>
        </div>
        <div>

          <div class=" QQ" style="display: flex;margin-bottom: 5px;">

            <img src="../assets/photo/11.jpg" alt="" style="margin-right:5px ;">


            <img src="../assets/photo/7.jpg" alt="">


          </div>
          <div class="cc pic">
            <img src="../assets//photo/8.jpg" alt=""> <img src="../assets/photo/13.jpg" alt="">
          </div>
        </div>
      </div>


      <!--小日子的一段話-->

      <!--
    <div class="digit  word">
      <p>小日子，書寫有故事的人</p><br><br><br>
       <p> 溫暖記錄臺灣土地上的小人物</p><br><br><br>
       <p>讓未曾留心的生活小細節，優雅顯現</p><br><br><br>
              
   </div>
   
</div>

</div> 
  
</section>-->

      <section>
        <div class="parallax-two">
          <h2></h2>
        </div>
      </section>

      <section>
        <div class="block bacc">
          <div class="fire">
            <img src="../assets/photo/flame.png" alt="">
          </div>
          <div class="fire2">
            <img src="../assets/photo/flame.png" alt="">
          </div>
          <div class="no1">
            <img src="../assets/photo/no1.png" alt=""></div>
          <div class="no2">
            <img src="../assets/photo/no2.png" alt=""></div>
          <div class="no3">
            <img src="../assets/photo/no3.png" alt=""></div>
          <!------------------------hot word------------------------------>
          <div class="hotword">
            <h3 class="hotword2">hot sale here!</h3>
            <div class="word">
              <span>H</span>
              <span>O</span>
              <span>T</span>

            </div>
          </div>
    
<!----------------------------------------------hot1------------------------------------------------------------->
<% 
	sql="select * from product where ID between 9 and 12";
	PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
	ResultSet rs=pstmt.executeQuery();

	rs.last();
    int totalNo=rs.getRow();
						
	sql="select * from product where ID between 9 and 12";
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
  </div>
</section>

<section>
  <div class="parallax-three">
    <h2></h2>
  </div>
</section>

<section class="abcdefg">
  <div class="block baccc">
    <div class="gif2">
    <img src="../assets/photo/original3.gif" alt="">  
    
  </div>
  <div class="sbdw">
   
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小日子，書寫有故事的人</p><br><br><br>
     <p> &nbsp;&nbsp;溫暖記錄臺灣土地上的小人物</p><br><br><br>
     <p>讓未曾留心的生活小細節，優雅顯現</p><br><br><br>
     
     
 </div>
 
</section>



  
</div>


<div class="footer">
  <a href="https://www.instagram.com/cycuim/" target="_blank"><img src="../assets/photo/ig1.png" class="img1"></a>
  <span class="text1">IG : cycuim</span>
  <a href="https://www.facebook.com/groups/CYCUIM5400" target="_blank"><img src="../assets/photo/fb1.png" class="img2"></a>
  <span class="text2">FB : CYCU_IM</span>
  <a href="mailto:sappho5311@gmail.com?subject=我的意見" target="_blank"><img src="../assets/photo/email1.png" class="img3"></a>
  <span class="text3">聯繫我們</span><br>
  <div class="text4">Copyright@2021 By Lin Leah, Liu Sappho , Karen , Ho Wilson - An All Rights Reseved 你是第<%=application.getAttribute("count") %>訪問者!
  </div>

</div>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="../assets/js/script.js"></script>

<!--跑滑入文字特效的-->
<script src="../assets/js/main.js"></script>
<script src="../assets/js/ScrollMagic.min.js"></script>
<script src="../assets/js/product.js"></script>
<script src="../assets/js/index.js"></script>
<script src="../assets/js/hotword.js"></script>
</body>

</html>