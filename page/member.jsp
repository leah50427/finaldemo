<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<%
  if(session.getAttribute("Email") != null )
  {
  sql = "SELECT Email, Password, Name, Tel, Address FROM members WHERE Email='" +session.getAttribute("Email")+"';";
  ResultSet rs1=con.createStatement().executeQuery(sql);
  String Email="", Password="", Name="", Tel="", Address="";
  //讀出id, pwd當成使用者要更改時的內定值
  while(rs1.next())
  {
  Email=rs1.getString("Email");
  Password=rs1.getString("Password");
  Name=rs1.getString("Name");
  Tel=rs1.getString("Tel");
  Address=rs1.getString("Address");
              }
%>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>會員專區</title>

  <style type="text/css">
    @import "../assets/css/membertext.css";

    .tabcontent {
      display: none;
    }
  </style>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
</head>

<body>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">

  <!-- Back to top button -->
  <a id="button1"></a>
  <h1 style="text-align: center; font-size: 45px;">會員專區</h1>
  <div class="dv1" style="background-image: url(../assets/photo/backg1.jpeg);">
    <div class="comment-row">
      <img class="comment-img1" src="../assets/photo/people/Rita Lee.jpg"><span>
        <h3 class="comment-name"><%=Name%></h3>
      </span>
    </div>
  </div>
  <div class="dv2">
    <menu class="menu">
      <button class="menu__item active tablink" onclick="openPage('memdata', this, '')" style="--bgColorItem: #ff8c00;">
        <svg class=" icon" viewBox="0 0 24 24">
          <path d="M3.8,6.6h16.4" />
          <path d="M20.2,12.1H3.8" />
          <path d="M3.8,17.5h16.4" />
        </svg>
      </button>

      <button class="menu__item" onclick="openPage('orderlist', this, '')" style="--bgColorItem: #fc68a6;">
        <svg class="icon" viewBox="0 0 24 24">
          <path d="M3.4,11.9l8.8,4.4l8.4-4.4" />
          <path d="M3.4,16.2l8.8,4.5l8.4-4.5" />
          <path d="M3.7,7.8l8.6-4.5l8,4.5l-8,4.3L3.7,7.8z" />
        </svg>
      </button>
      <button class="menu__item" id="return_list" onclick="openPage('return', this, '')"
        style="--bgColorItem: #4437f8;">
        <svg class="icon" viewBox="0 0 24 24">
          <path d="M5.1,3.9h13.9c0.6,0,1.2,0.5,1.2,1.2v13.9c0,0.6-0.5,1.2-1.2,1.2H5.1c-0.6,0-1.2-0.5-1.2-1.2V5.1
                  C3.9,4.4,4.4,3.9,5.1,3.9z" />
          <path d="M4.2,9.3h15.6" />
          <path d="M9.1,9.5v10.3" />
        </svg>
      </button>

      <button class="menu__item" onclick="openPage('score', this, '')" style="--bgColorItem:#f4f773;">
        <svg class=" icon" viewBox="0 0 24 24">
          <path d="M5.1,3.9h13.9c0.6,0,1.2,0.5,1.2,1.2v13.9c0,0.6-0.5,1.2-1.2,1.2H5.1c-0.6,0-1.2-0.5-1.2-1.2V5.1
                  C3.9,4.4,4.4,3.9,5.1,3.9z" />
          <path d="M5.5,20l9.9-9.9l4.7,4.7" />
          <path
            d="M10.4,8.8c0,0.9-0.7,1.6-1.6,1.6c-0.9,0-1.6-0.7-1.6-1.6C7.3,8,8,7.3,8.9,7.3C9.7,7.3,10.4,8,10.4,8.8z" />
        </svg>
      </button>
      <div class="menu__border"></div>
    </menu>
    <div class="svg-container">
      <svg viewBox="0 0 202.9 45.5">
        <clipPath id="menu" clipPathUnits="objectBoundingBox" transform="scale(0.0049285362247413 0.021978021978022)">
          <path d="M6.7,45.5c5.7,0.1,14.1-0.4,23.3-4c5.7-2.3,9.9-5,18.1-10.5c10.7-7.1,11.8-9.2,20.6-14.3c5-2.9,9.2-5.2,15.2-7
                  c7.1-2.1,13.3-2.3,17.6-2.1c4.2-0.2,10.5,0.1,17.6,2.1c6.1,1.8,10.2,4.1,15.2,7c8.8,5,9.9,7.1,20.6,14.3c8.3,5.5,12.4,8.2,18.1,10.5
                  c9.2,3.6,17.6,4.2,23.3,4H6.7z" />
        </clipPath>
      </svg>
    </div>
  </div>

  <% if(session.getAttribute("Email")!=null){%>
  <div id="memdata" class="content tabcontent">
      <form method="POST" action="update.jsp">
        <h2>個人檔案</h2>
        <p></p>
        <h4 style="font-size: 20px;">姓 名 ： <input type="text" name="Name" size="30" style="font-size:18px" value="<%=Name%>"><br>
          <p></p>
          電 話 ： <input type="text" name="Tel" size="30" style="font-size:18px" value="<%=Tel%>"><br>
          <p></p>
          住 址 ： <input type="text" name="Address" size="80" style="font-size:18px" value="<%=Address%>"><br>
          <p></p>
          E-Mail ： <input type="Email" size="30" title="username@mailserver" style="font-size:18px" name="Email" value="<%=Email%>"><br>
          <p></p>
          舊 密 碼 ：<input type="password" class="input" placeholder="Password" value="<%=Password%>"/><br>
          <p></p>
          新 密 碼 ：<input type="Password" class="input" placeholder="Password" name="Password" value="<%=Password%>" /><br>
          <p></p>
        </h4>
    </form>
    <div style="text-align: center;">
      <input type="submit" onclick="submit()" style="width: 100px; height: 30px; font-size: 20px;" value="送出" />
      <input type="reset" style="width: 100px; height: 30px; font-size: 20px;" value="重填" />
    </div>
  </div>
  <%
}
%>
  <% }
  else{%>
    <script>alert('請先登入會員唷~!'); self.location=document.referrer;response.sendRedirect("login.jsp");</script>
  <%}%>
  <div id="orderlist" class="content tabcontent">
    <h2>消費記錄</h2>
    <p></p>
    <table>
      <tr>
        <td colspan="4" class="t2">
          訂單編號：T123456789</td>
      </tr>
      <tr>
        <td colspan="4" class="t2">
          訂購日期：2021/04/24<span style="padding-left: 200px; "> 出貨日期：2021/05/05 </span></td>
      </tr>

      <tr>
        <td class="name" style="width: 350px;">
          <img src="../assets/photo/bag/b1.jpg" alt="" style="padding-left: 50px;">
          <span> 萬用收納袋 ： 胚白色</span>
        </td>
        <td class="count"> 1 </td>
        <td class="price" id="price">NT$179</td>
        <td class="operate">
          <button id="return_bn" class="rebn" onclick="rebn()">我要退貨</button>
        </td>
      </tr>
      <tr>
        <td class="name">
          <img src="../assets/photo/penbag/penbag1.jpg" alt="" style="padding-left: 50px;">
          <span> 筆袋 ： 胚白色</span>
        </td>
        <td class="count"> 1 </td>
        <td class="price" id="price"> NT$159</td>
        <td class="operate">
          <button id="return_bn" class="rebn" onclick="rebn()">我要退貨</button>
        </td>
      </tr>
    </table>
  </div>
  <div id="return" class="content tabcontent">
    <h2>退換貨申請</h2>
    <table class="tab1">
      <tr>
        <td colspan="3" class="t1">
          訂單編號：T123456789</td>
      </tr>
      <tr>
        <td colspan="3" class="t1">
          訂購日期：2021/04/24<span style="padding-left: 200px; "> 出貨日期：2021/05/05 </span></td>
      </tr>
      <tr>
        <td class="name" style="width: 350px;">
          <img src="../assets/photo/bag/b1.jpg" alt="" style="padding-left: 50px;">
          <span> 萬用收納袋 ： 胚白色</span>
        </td>
        <td class="count"> 1 </td>
        <td class="price" id="price">NT$179</td>
      </tr>
    </table>
    <div class="rdv">
      <form method="POST" action="action_page.php" id="view1">
        <h2> 退貨人資訊 </h2>
        <p></p>
        <h4 style="font-size: 20px;">
          姓 名 ： Rita Lee<br>
          <p></p>
          住 址 ：<input type="text" name="t2" size="80" style="font-size:18px"><br>
          <p></p>
          電 話 ： <input type="tel" name="tel" size="30" style="font-size:18px"><br>
          <p></p>
          E-Mail ： ritalee @gmail.com<br>
          <P></P>
          <h4>退款卡片：</h4>
          <input type="radio" name="card" value="VISA" style="height: 30px;"><img src="../assets/photo/visa2.jpg"><span
            style="padding-left: 20px;">
            <input type="radio" name="card" value="Master" style="height: 30px;"><img
              src="../assets/photo/mastercard.png"></span><span style="padding-left: 20px;">
            <input type="radio" name="card" value="JBC" style="height: 30px;"> <img
              src="../assets/photo/jcb.jpg"></span><span style="padding-left: 20px;">
            <input type="radio" name="card" value="AE" style="height: 30px;"><img
              src="../assets/photo/ac1.jpg"></span><span style="padding-left: 20px;">
            <input type="radio" name="card" value="applepay" style="height: 30px;"><img
              src="../assets/photo/applepay.jpg"></span><span style="padding-left: 20px;">
            <input type="radio" name="card" value="Pay" style="height: 30px;"><img
              src="../assets/photo/pay.jpg"></span><span style="padding-left: 20px;">
            <input type="radio" name="card" value="聯銀卡" style="height: 30px;"><img
              src="../assets/photo/unionpay.png"></span>

          <h4> 刷卡資訊</h4>
          發卡銀行 ： <select size="1" name="銀行名稱" style="font-size:16px; width: 200px; height: 30px;">
            <option>004 台灣銀行</option>
            <option>005 土地銀行</option>
            <option>007 彰化銀行</option>
            <option>012 富邦銀行</option>
            <option>013 國泰銀行</option>
            <option>021 花旗銀行</option>
            <option>081 匯豊銀行</option>
            <option>700 中華郵政</option>
            <option>808 玉山銀行</option>
          </select><br>
          <p></p>
          信用卡號 ： <input type="text" inputmode="numeric" name="卡號" style="font-size: 16px; width: 200px; height: 20px;"
            minlenght="16" maxlength="18"><span style="padding-left: 100px;">驗證碼：<input type="text" nputmode="numeric"
              name="quantity" minlenght="3" maxlength="4" style="font-size: 15px;" size="5"></span><br>
          <h4>退貨原因</h4>
          <textarea name="memo" cols="70" rows="10" wrap="hard" style="font-size: 20px;"></textarea><br><br>
          <p></p>
        </h4>
      </form>
    </div>
    <div style="text-align: center;">
      <input type="submit" onclick="submit1()" style="width: 100px; height: 30px; font-size: 20px;" value="送出" />
      <input type="reset" style="width: 100px; height: 30px; font-size: 20px;" value="重填" />
    </div>
  </div>
  <div id="score" class="content tabcontent">
    <h2>評論及評分</h2>
    <table>
      <tr>
        <td class="date">2021/05/07</td>
        <td class="s1"> 萬用收納袋</td>
        <td class="s2"> 輕巧好用</td>
        <td class="s1"> 五顆星 </td>
      </tr>
      <tr>
        <td class="date">2021/05/07</td>
        <td class="s1"> 筆袋</td>
        <td class="s2"> 買了大的、小的一起買，喜歡一組的感覺</td>
        <td class="s1"> 四顆星 </td>
      </tr>
    </table>
  </div>
  <div class="dv3"><a href="product.jsp" target="_blank">
      <img src="../assets/photo/back3.gif" style="width: 150px; height: 50px;"></a>

    <span style="padding-left: 100px;"></span>
    <a href="index.jsp" target="_blank">
      <img src="../assets/photo/home1.gif" style="width: 150px; height: 50px;">
    </a>
    <span style="padding-left: 100px;"></span>
    <a href="logout.jsp" ><img src="../assets/photo/logout.png"
      style="width: 50px; height: 50px;"></a>
  </div>

</body>
<script src="../assets/js/textmember.js"></script>

</html>