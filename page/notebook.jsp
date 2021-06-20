<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order</title>
  <style type="text/css">
    @import "../assets/css/ordtext.css";
  </style>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://css.gg/heart.css" rel="styleshee">
  <!--標題-->

  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
  <script type="text/javascript"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
  <script>
    function first() {
      document.getElementById("bigimg").style.backgroundImage = "url(../assets/photo/notebook/note1.jpg";
    }

    function second() {
      document.getElementById("bigimg").style.backgroundImage = " url(../assets/photo/notebook/note2.jpg)";
    }

    function third() {
      document.getElementById("bigimg").style.backgroundImage = " url(../assets/photo/notebook/note3.jpg)";
    }

    function forth() {
      document.getElementById("bigimg").style.backgroundImage = " url(../assets/photo/notebook/note4.jpg)";
    }

    var span = document.getElementsByTagName('span');
    //var num = parseInt(span[0].innerHTML);

    function Add() {
      var num = parseInt(document.getElementById('itemcount').innerText);
      num++;
      document.getElementById('itemcount').innerText = num.toString();
      ProductNumberChange();
    }

    function Less() {
      var num = parseInt(document.getElementById('itemcount').innerText);
      if (num > 1) {
        num--;
        document.getElementById('itemcount').innerText = num.toString();
        ProductNumberChange();
      } else {
        Delete()
      }
    }

    function clickSearch() {
      event.preventDefault();
      var input = document.getElementById('search').value;
      console.log(input);
      if (input.length > 0) {
        console.log(input);
        document.getElementById('search').value = "";
      }
    }

    function favoriteClick() {
      if (document.getElementById("favorite-heart").style.color == "red") {
        document.getElementById("favorite-heart").style.color = "grey";
      } else {
        document.getElementById("favorite-heart").style.color = "red";
      }
    }

    function AddtoShoppingCart() {
      event.preventDefault();
      var input = parseInt(document.getElementById('itemcount').innerHTML);
      document.getElementById('shopping-cart-count').setAttribute('data-count', input + parseInt(document
        .getElementById('shopping-cart-count').getAttribute('data-count')));
    }

    function submitComment() {
      event.preventDefault();
    }
  </script>
  <style>
    .bn1 {
      width: 200px;
      height: 50px;
      font-size: 30px;
      font-weight: bolder;
      text-align: center;
      border: rgb(235, 190, 140) 5px inset;
      border-radius: 25px;
      background-image: url(../assets/photo/bg01.gif);
    }

    .bn1:hover {
      background-image: url(../assets/photo/bg02.gif);
      border: rgb(235, 190, 140) 3px groove;
    }
   </style>

</head>

<body>
  
  <%
  String sql5="SELECT * FROM product WHERE id=1";
  ResultSet rs1=con.createStatement().executeQuery(sql5);
  rs1.next();
  %>
 

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">
  <!-- Back to top button -->
  <a id="button1"></a>
  <header>
    <div id="main">
      <section>
        <div class="title">
          <div class="cat">
            <img src="../20.gif" alt="">
          </div>
          <h1>小日子</h1>
          <h3>Be true. Be you.</h3>
          <!-- 按鈕 -->
          <nav>
            <ul>
              <section class="buttons">
                <a href="index.jsp" class="btna"><button class="draw">Home</button></a>
                <a href="product.jsp" class="btna"><button class="draw2">Product</button></a>
                <a href="login.jsp" class="btna"><button class="draw3">About us</button></a>
                <a href="login.jsp" class="btna"><button class="draw4">Log in</button></a>
              </section>
            </ul>
          </nav>
        </div>
      </section>
    </div>
  </header>
  
  <!------------------------------------------------------------------------------------------------->
  <div class="head2">
    <div id="searchbar" style="margin-right: 10px;" mothod="GET" >
      <form ㄗ id="search_form" method="get" action="search.jsp">
        <input id="search" name="search" type="text" placeholder="請搜索"><input id="search_submit" type="submit"
          onclick="clickSearch()">
      </form>
    </div>
    <div id="heart" style="margin: 10px 30px;">
      <a href="favorite.html" target="_blank">
        <i class="fa fa-heart" style="font-size:36px;color:red"></i>
      </a>
    </div>
    <span style="padding-right: 100px;">
      <div id="shopping-cart-count" class="fa-stack fa-5x has-badge" data-count="0" style="font-size: 1.6rem;">
        <a href="shoppingcar.html" target="_blank">
          <i class="fa fa-circle fa-stack-2x "></i>
          <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i></a>
      </div>
    </span>
  </div>
  <div class="row">
    <div class="left">
      <div id="bigimg" style="background-image: url(../<%=rs1.getString(6)%>)"></div><br>
      <div class="ig2">
        <div class="small" style="background-image: url(../<%=rs1.getString(20)%>)" onclick="first()"></div>
        <div class="small" style="background-image: url(../<%=rs1.getString(21)%>)" onclick="second()"></div>
        <div class="small" style="background-image: url(../<%=rs1.getString(22)%>)" onclick="third()"></div>
        <div class="small" style="background-image: url(../<%=rs1.getString(23)%>)" onclick="forth()"></div>
      </div>
    </div>
    <div class="right">
      <h1 style="font-size: 30px;"><%=rs1.getString(12)%></h1>
      <h3 style="font-size: 20px;"> NT<%=rs1.getString(11)%></h3>
      <br>
      <h3 style="font-size: 16px;">三款個性十足宣言及質感色彩，記錄你的多釆多姿的生活!</h3><br>
      <form style="font-size: 20px; font-weight: bold;">
        顏色款式：<select size="1" name="color" style="font-size: 20px; width: 200px;">
          <option> 請選擇顏色</option>
          <option> 灰色</option>
          <option> 墨綠</option>
          <option> 茶色</option>
        </select>
      </form><br>
      <h3 style="font-size: 20px;">數量</h3><br>
      <div class="count">
        <button onclick="Less()" class="but1">-</button>
        <span class="itemcount" id="itemcount">1</span>
        <button onclick="Add()" class="but1">+</button>
      </div><br><br>
      <div>
        <form name="form1" method="post" action="backcar.jsp">
        <span><button class="but2" onclick="AddtoShoppingCart()" >加入購物車</button></span>
        <input type="hidden" name="goods" value="goods1"/>
        <span style="margin-left: 20px;"> <button class="but3"><a href="paylist.html" target="_blank"
              style=" text-decoration: none; color: white;">直接購買</a></button></span>
        <span style="margin-left: 50px;">
        </form>
          <i id="favorite-heart" class="fa fa-heart" style="font-size:40px" onclick="favoriteClick()"></i>
        </span>
      </div>
    </div>
  </div>
  <div style="clear: both; margin-top:100px;">
    <form style="text-align: center;">
      <button class="bn1" id="內容"><a href="#內容"
          style=" text-decoration: none; color: rgb(54, 52, 52);">商品內容</a></button><span class="sp1"></span>
      <button class="bn1"><a href="#tab1" style=" text-decoration: none; color: rgb(54, 52, 52);">商品評論</a></button>
    </form>
  </div>
  <div>
    <img src="photo/line-9.gif" class="img1">
  </div>
  <div class="list" id="商品內容">
    <br>
    <h2> 規格</h2>
    <h3 id="tab1">尺寸：9 × 16cm<br>
      材質：封面｜大亞 香草紙250g，文案打凹<br>
      內頁｜大亞 天堂鳥85g 96P<br>
      特色：內頁選用日系經典微塗紙 — 天堂鳥，紙質細緻又帶有微塗佈，有飽和不沉的色彩表現。可攤平設計，書寫更便利。
    </h3>
  </div>
  <div>
    <img src="photo/line1.gif" class="img1">
  </div>
  
  <%
             sql="SELECT * FROM `guestbook` WHERE `Product`='筆記本'"; 
             ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
             rs.last();
             int total_content=rs.getRow();
            
             int page_num=(int)Math.ceil((double)total_content/5.0);
             out.println("請選擇頁數");
             for(int i=1;i<=page_num;i++) 
             out.print("<a href='notebook.jsp?page="+i+"'>"+i+"</a>&nbsp;");
             out.println("<p>");

             String page_string = request.getParameter("page");
             if (page_string == null) 
                 page_string = "0";          
             int current_page=Integer.valueOf(page_string);
             if(current_page==0) 
              current_page=1; 
             int start_record=(current_page-1)*5;
             sql="SELECT * FROM `guestbook` WHERE `Product`='筆記本' ORDER BY `GBNO` DESC LIMIT ";
             sql+=start_record+",5";
             rs=con.createStatement().executeQuery(sql);
                  
                   for (int i=0; i<total_content; i++)
                  {
                    rs.next();
                    out.println("<div class='comment' id='評論'>\n");
                    out.println("<div class='comment-body'>\n");
                    out.println("<div class='comment-row'>\n");
                    out.println("<img src='https://image.ibb.co/jw55Ex/def_face.jpg' class='comment-dp' />\n");
                    out.println("<h3 class='comment-name'>"+rs.getString(2)+"</h3>\n");
                    out.println("<p class='comment-date'>"+rs.getString(6)+"</p>\n");
                    out.println("</div>\n");
                    out.println("<div class='comment-star'>\n");
                    for(int j=0,k=rs.getInt(4); j<k; j++)
                    {
                      out.print("<span class='fa fa-star checked'></span>\n");
                    }
                    for(int j=5,k=rs.getInt(4); k<j; k++)
                    {
                      out.print("<span class='fa fa-star'></span>\n");
                    }
                    out.println("</div>\n"); 
                    out.println("<div class='comment-text'>\n");
                    out.println(""+rs.getString(5)+"\n");
                    out.println("</div><hr /></div></div>");
                           
            }
            con.close();
     
  
  %>
  
  
  <!-- 評論的form -->
  <form id="feedback" method="get" action="add.jsp">
    <div class="pinfo">Name</div>
    <div class="form-group">
      <div class="col-md-4 inputGroupContainer"  >
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-user"></i></span>
          <input name="name" placeholder="Benson Chu" class="form-control" type="text">
        </div>
      </div>
    </div>

    <div class="pinfo"> 產品 </div>
    <div class="input-group">
      <input name="product" class="form-control" type="text">
    </div>

    <div class="pinfo">Rate our overall services.</div>
    <span class="star-rating">
      <input type="radio" name="rating" value="1"><i></i>
      <input type="radio" name="rating" value="2"><i></i>
      <input type="radio" name="rating" value="3"><i></i>
      <input type="radio" name="rating" value="4"><i></i>
      <input type="radio" name="rating" value="5"><i></i>
    </span>

    <div class="pinfo">Write your feedback.</div>
    <div class="form-group">
      <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
          <textarea class="form-control" id="review" rows="3"></textarea>
        </div>
      </div>
    </div>
    <input type="submit" class="btn btn-primary" value="submit">
    </form>
 
</body>
<script src="../assets/js/textorder.js"></script>

</html>